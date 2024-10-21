from datetime import datetime
from typing import Any, List, Optional

import polars as pl
from pydantic import BaseModel, Field

from .pool import PG


class TankTsDataTransform(BaseModel):
    tank_metric: str
    tank_type: str
    uom: str
    timestamps: List[datetime]
    values: List[float]


class GetTanksTimeDataReq(BaseModel):
    source_key: set[str] = Field(default=["9884001"])


class TankTsDataTransformResponse(BaseModel):
    timeseries: list[TankTsDataTransform]


TANK_TS_QUERY = """--sql
    SELECT td.key_metric, td.ts, td.value, dc.source_key AS source_key, dc.metric_nice_name, dc.uom
    FROM timeseries_dba.timeseries_data_two AS td
    JOIN timeseries_dba.data_catalog AS dc ON td.key_metric = dc.key_metric
    WHERE dc.source_key = ANY(:source_key::VARCHAR[])
"""


# fetching the data
async def fetch_tank_ts_data(req: GetTanksTimeDataReq) -> Optional[pl.DataFrame]:
    df = await PG.fetch(TANK_TS_QUERY, source_key=req.source_key)
    return df


def transform_tank_ts_data(df: Optional[pl.DataFrame]) -> list[dict[str, Any]]:
    if df is None:
        return []

    lf = df.lazy()

    lf = lf.drop("key_metric")

    tank_metrics = ["Level", "Volume", "InchesUntilAlarm", "InchesToESD"]
    tank_types = ["Water", "Oil"]

    tank_metrics_str = "|".join(tank_metrics)
    tank_types_str = "|".join(tank_types)

    pattern = f"^(?<is_esd>ESD-)?(?<tank_type>{tank_types_str})Tank(?<tank_number>[0-9]*)(?<tank_metric>{tank_metrics_str})"
    lf = lf.with_columns(
        separated_metrics=pl.col("metric_nice_name").str.extract_groups(pattern)
    )
    lf = lf.unnest("separated_metrics")

    lf = lf.drop("is_esd", "tank_number")

    filtered_lf = lf.filter(~pl.col("metric_nice_name").str.ends_with("ID"))

    ts_to_sec = filtered_lf.with_columns(
        pl.col("ts")
        .dt.strftime("%Y-%m-%d %H:%M:%S")
        .str.strptime(pl.Datetime)
        .alias("ts")
    )

    ts_to_sec = ts_to_sec.sort("ts")

    aggregated_lf = ts_to_sec.group_by(["tank_metric", "tank_type", "uom"]).agg(
        [pl.col("ts").alias("timestamps"), pl.col("value").alias("values")]
    )

    aggregated_lf = aggregated_lf.sort("tank_metric", "tank_type")

    result = aggregated_lf.collect()
    return result.to_dicts()
