from enum import Enum
from typing import Any, Optional

import polars as pl
from pydantic import BaseModel, Field

from src.constants import PROPERTY_ID
from src.pool import PG


class TankDataTransform(BaseModel):
    property_id: str
    scada_id: str
    tank_type: str
    tank_number: Optional[int]
    level: float
    volume: int
    inches_to_esd: Optional[float]
    time_until_esd: Optional[float]
    capacity: float
    percent_full: int


class TankType(Enum):
    Oil = "Oil"
    Water = "Water"


class GetTanksReq(BaseModel):
    tank_types: set[TankType] = Field(default={TankType.Oil, TankType.Water})
    property_ids: set[str] = Field(default=["98743", "69419"])


class TankDataTransformResponse(BaseModel):
    tanks: list[TankDataTransform]


TANKS_QUERY = f"""--sql 
   WITH last_known_values AS ( 
    SELECT *, 
    ROW_NUMBER() OVER (PARTITION BY td.key_metric ORDER BY td.ts DESC) AS rnk
    FROM sdm_dba.timeseries_data td   
)
SELECT
    dc.source_id AS {PROPERTY_ID},
    dc.source_key AS scada_id,
    dc.metric_nice_name,
    dc.key_metric AS unique_id,
    dc.uom,
    td.ts AS timestamp,
    td.value,
    tm.tanksize AS tanksize
FROM sdm_dba.data_catalog dc
JOIN last_known_values td ON dc.key_metric = td.key_metric
LEFT JOIN tank.tank_metadata tm ON tm.scadaid = dc.source_key
WHERE metric_nice_name ~ :the_regex AND dc.source_id = ANY(:property_ids::VARCHAR[]) AND rnk = 1
"""

tank_metrics = [
    "Level",
    "Volume",
    "InchesUntilAlarm",
    "InchesToESD",
    "TimeUntilESD",
    "Capacity",
    "ID",
]
tank_metrics_str = "|".join(
    tank_metrics
)  # Level|Volume-Current|InchesUntilAlarm|InchestoESD|Interface|Oil-Level|Capacity|ID
tank_types_strs = [
    tank_type.value for tank_type in TankType
]  # Water, Oil as defined above
tank_types_str = "|".join(tank_types_strs)  # Water|Oil


# fetching the data
async def fetch_tank_data(req: GetTanksReq) -> Optional[pl.DataFrame]:
    tank_types_strs = [tank_type.value for tank_type in req.tank_types]
    tank_types_str = "|".join(tank_types_strs)
    the_regex = f"^(ESD-)?({tank_types_str})Tank[0-9]*({tank_metrics_str})$"
    # Optional matches "ESD-", matches either (Water|Oil), matches the string literal 'Tank', [0-9]* matches zero or clearmore digits,
    # matches one of these (Level|Volume|InchesUntilAlarm|InchestoESD|TimeUntilESD|Capacity|ID)
    # $ the regex ends at the end of the string

    property_ids_list = list(req.property_ids)

    df = await PG.fetch(
        TANKS_QUERY, the_regex=the_regex, property_ids=property_ids_list
    )

    return df  # returning a DataFrame


# transforming the data
def transform_tank_data(df: Optional[pl.DataFrame]) -> list[dict[str, Any]]:
    if df is None:
        return []

    lf = df.lazy()
    lf = lf.drop("unique_id")

    pattern = f"^(?<is_ESD>ESD-)?(?<tank_type>{tank_types_str})Tank(?<tank_number>[0-9]*)(?<tank_metric>{tank_metrics_str})"
    lf = lf.with_columns(
        separated_metrics=pl.col("metric_nice_name").str.extract_groups(pattern)
    )
    lf = lf.unnest("separated_metrics")

    lf = lf.with_columns(pl.col("tank_number").cast(pl.UInt8, strict=False))

    # pivoting the data
    values = pl.col("value")
    columns = pl.col("tank_metric")
    pivoted_lf = lf.group_by(PROPERTY_ID, "tank_type", "tank_number", "scada_id").agg(
        values.filter(columns == metric).first().alias(metric)
        for metric in tank_metrics
    )

    null_condition = pl.col("tank_number").is_null()
    not_null_condition = pl.col("tank_number").is_not_null()

    null_tanks = pivoted_lf.filter(null_condition)
    numbered_tanks = pivoted_lf.filter(not_null_condition)

    null_tanks = null_tanks.with_columns(pl.col("ID").alias("tank_number"))
    null_tanks = null_tanks.drop("ID")
    null_tanks = null_tanks.with_columns(
        pl.col("tank_number").cast(pl.UInt8, strict=False)
    )

    joined_lf = numbered_tanks.join(
        null_tanks, on=[PROPERTY_ID, "tank_type", "tank_number"], how="left"
    )

    final_lf = joined_lf.join(lf, on=["scada_id"], how="left")
    final_lf = final_lf.group_by(PROPERTY_ID, "tank_type", "tank_number").agg(
        pl.all().first()
    )

    final_lf = final_lf.with_columns(
        pl.col(PROPERTY_ID),
        pl.col("tank_type"),
        pl.col("tank_number"),
        pl.coalesce(pl.col("Level"), pl.col("Level_right")).alias("level"),
        pl.coalesce(pl.col("Volume"), pl.col("Volume_right")).alias("volume"),
        pl.coalesce(pl.col("InchesToESD"), pl.col("InchesUntilAlarm_right")).alias(
            "inches_to_esd"
        ),
        pl.coalesce(pl.col("TimeUntilESD"), pl.col("TimeUntilESD_right")).alias(
            "time_until_esd"
        ),
        pl.coalesce(pl.col("Capacity"), pl.col("tanksize")).alias("capacity"),
    )

    required_columns = [
        PROPERTY_ID,
        "scada_id",
        "tank_type",
        "tank_number",
        "level",
        "volume",
        "inches_to_esd",
        "time_until_esd",
        "capacity",
    ]
    final_lf = final_lf.select(required_columns)

    final_lf = final_lf.sort(PROPERTY_ID, "tank_type", "tank_number")

    percent_tank_full = (
        (pl.col("volume") / pl.col("capacity") * 100).round().cast(pl.UInt8)
    )
    final_lf = final_lf.with_columns(percent_tank_full.alias("percent_full"))

    capacity_rounded = pl.col("capacity").round()
    final_lf = final_lf.with_columns(capacity_rounded.alias("capacity"))

    volume_to_feet = pl.col("volume").round().cast(pl.UInt64)
    final_lf = final_lf.with_columns(volume_to_feet.alias("volume"))

    result = final_lf.collect()
    return result.to_dicts()
