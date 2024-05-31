from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager
from pydantic import BaseModel, Field
from datetime import datetime
from fastapi import FastAPI
from typing import Optional
from src.pool import PG
from enum import Enum
import polars as pl
import uvicorn


@asynccontextmanager
async def lifespan(app: FastAPI):
    yield

app = FastAPI(lifespan=lifespan, debug=True)

app.add_middleware(
    CORSMiddleware, 
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class TankDataTransform(BaseModel):
    primo_id: str
    tank_type: str
    tank_number: Optional[int]
    Level: Optional[float]
    Volume: Optional[float]
    InchesToESD: Optional[float]
    TimeUntilESD: Optional[float]
    Capacity: Optional[float]
    PercentFull: Optional[int]


class TankType(Enum):
    Oil = "Oil"
    Water = "Water"


class GetTanksReq(BaseModel):
    tank_types: set[TankType] = Field(default={TankType.Oil, TankType.Water})
    primo_ids: set[str] = Field(default=["98743", "69419"])


class TankDataTransformResponse(BaseModel):
    tanks: list[TankDataTransform]
    

TANKS_QUERY = """--sql 
   WITH last_known_values AS ( 
    SELECT *, 
    ROW_NUMBER() OVER (PARTITION BY td.key_metric ORDER BY td.ts DESC) AS rnk
    FROM sdm_dba.timeseries_data td   
)
SELECT
    dc.source_id AS primo_id,
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
WHERE metric_nice_name ~ :the_regex AND dc.source_id = ANY(:primo_ids::VARCHAR[]) AND rnk = 1
"""

tank_metrics = ["Level", "Volume", "InchesUntilAlarm", "InchesToESD", "TimeUntilESD", "Capacity", "ID"]
tank_metrics_str = "|".join(tank_metrics) # Level|Volume-Current|InchesUntilAlarm|InchestoESD|Interface|Oil-Level|Capacity|ID
tank_types_strs = [tank_type.value for tank_type in TankType] # Water, Oil as defined above 
tank_types_str = "|".join(tank_types_strs) # Water|Oil


#fetching the data
async def fetch_tank_data(req: GetTanksReq) -> Optional[pl.DataFrame]:
    tank_types_strs = [tank_type.value for tank_type in req.tank_types]
    tank_types_str = "|".join(tank_types_strs)
    the_regex = f'^(ESD-)?({tank_types_str})Tank[0-9]*({tank_metrics_str})$'
    #Optional matches "ESD-", matches either (Water|Oil), matches the string literal 'Tank', [0-9]* matches zero or clearmore digits, 
    #matches one of these (Level|Volume|InchesUntilAlarm|InchestoESD|TimeUntilESD|Capacity|ID)
    #$ the regex ends at the end of the string

    primo_ids_list = list(req.primo_ids)

    df = await PG.fetch(TANKS_QUERY, the_regex=the_regex, primo_ids=primo_ids_list)

    return df #returning a DataFrame


#transforming the data
def transform_tank_data(df: Optional[pl.DataFrame]):
    if df is None:
        return []
    
    lf= df.lazy()
    lf = lf.drop("unique_id")

    pattern = f'^(?<is_ESD>ESD-)?(?<tank_type>{tank_types_str})Tank(?<tank_number>[0-9]*)(?<tank_metric>{tank_metrics_str})'
    lf = lf.with_columns(separated_metrics = pl.col("metric_nice_name").str.extract_groups(pattern))
    lf = lf.unnest("separated_metrics")

    lf = lf.with_columns(pl.col("tank_number").cast(pl.UInt8, strict=False))

    #pivoting the data
    values = pl.col("value")
    columns = pl.col("tank_metric")
    pivoted_lf = lf.group_by("primo_id", "tank_type", "tank_number", "scada_id").agg(values.filter(columns == metric).first().alias(metric) for metric in tank_metrics)

    null_condition = pl.col("tank_number").is_null()
    not_null_condition = pl.col("tank_number").is_not_null()

    null_tanks = pivoted_lf.filter(null_condition)
    numbered_tanks = pivoted_lf.filter(not_null_condition)

    null_tanks = null_tanks.with_columns(pl.col("ID").alias("tank_number"))
    null_tanks = null_tanks.drop("ID")
    null_tanks = null_tanks.with_columns(pl.col("tank_number").cast(pl.UInt8, strict=False))

    joined_lf = numbered_tanks.join(null_tanks, on=["primo_id", "tank_type", "tank_number"], how="left")

    final_lf = joined_lf.join(lf, on=["scada_id"], how="left")
    final_lf = final_lf.group_by("primo_id", "tank_type", "tank_number").agg(pl.all().first())

    final_lf = final_lf.with_columns(
    pl.col("primo_id"),
    pl.col("tank_type"),
    pl.col("tank_number"),
    pl.coalesce(pl.col("Level"), pl.col("Level_right")).alias("Level"),
    pl.coalesce(pl.col("Volume"), pl.col("Volume_right")).alias("Volume"),
    pl.coalesce(pl.col("InchesToESD"), pl.col("InchesUntilAlarm_right")).alias("InchesToESD"),
    pl.coalesce(pl.col("TimeUntilESD"), pl.col("TimeUntilESD_right")).alias("TimeUntilESD"),
    pl.coalesce(pl.col("Capacity"), pl.col("tanksize")).alias("Capacity")
    )

    required_columns = ["primo_id", "tank_type", "tank_number", "Level", "Volume", "InchesToESD", "TimeUntilESD", "Capacity"]
    final_lf = final_lf.select(required_columns)

    final_lf = final_lf.sort("primo_id", "tank_type", "tank_number")
    percent_tank_full = (pl.col("Volume") / pl.col("Capacity") * 100).round().cast(pl.UInt8)
    final_lf = final_lf.with_columns(percent_tank_full.alias("percent_full"))

    result = final_lf.collect()
    return result.to_dicts()

     
@app.post("/tanks")
async def get_tank_data(req: GetTanksReq):
    fetch_tanks = await fetch_tank_data(req)
    transform_tanks = transform_tank_data(fetch_tanks)
    res = TankDataTransformResponse.model_validate({"tanks": transform_tanks})
    return res

@app.get("/")
def read_root():
    return {"The Tank Project"}

def main():
    uvicorn.run("src.main:app", host="0.0.0.0", port=8000)

if __name__ == "__main__":
    main()

