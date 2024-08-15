from datetime import datetime
from typing import Any, List, Optional

import polars as pl
from pydantic import BaseModel, Field

from src.pool import PG


class TankTsDataTransform(BaseModel):
    tank_metric: str
    uom: str
    timestamps: List[datetime]
    values: List[float]


class GetTanksTimeDataReq(BaseModel):
    scada_id: str = Field(default="6941901")


class TankTsDataTransformResponse(BaseModel):
    timeseries: list[TankTsDataTransform]


TANK_TS_QUERY = """--sql
    SELECT td.ts, td.value, dc.source_key AS scada_id, dc.metric_nice_name AS tank_name, dc.uom
    FROM sdm_dba.timeseries_data AS td
    JOIN sdm_dba.data_catalog AS dc ON td.key_metric = dc.key_metric
    WHERE dc.source_key = :scada_id
"""


# fetching the data
async def fetch_tank_ts_data(req: GetTanksTimeDataReq) -> Optional[pl.DataFrame]:
    df = await PG.fetch(TANK_TS_QUERY, scada_id=req.scada_id)
    return df


def transform_tank_ts_data(df: Optional[pl.DataFrame]) -> list[dict[str, Any]]:
    if df is None:
        return []

    lf = df.lazy()

    lf = lf.drop("key_metric")

    tank_metrics = ["Level", "Volume"]
    tank_types = ["Water", "Oil"]

    tank_metrics_str = "|".join(tank_metrics)
    tank_types_str = "|".join(tank_types)

    pattern = f"^(?<is_esd>ESD-)?(?<tank_type>{tank_types_str})Tank(?<tank_number>[0-9]*)(?<tank_metric>{tank_metrics_str})"
    lf = lf.with_columns(
        separated_metrics=pl.col("tank_name").str.extract_groups(pattern)
    )
    lf = lf.unnest("separated_metrics")

    lf = lf.drop("tank_name", "is_esd", "tank_type", "tank_number")

    aggregated_lf = lf.group_by(["tank_metric", "uom"]).agg(
        [pl.col("ts").alias("timestamps"), pl.col("value").alias("values")]
    )

    result = aggregated_lf.collect()
    return result.to_dicts()
