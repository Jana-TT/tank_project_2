
from sys import float_repr_style
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
import uuid


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

class TankData(BaseModel):
    primo_id: str
    scada_id: str
    metric_nice_name: str 
    unique_id: uuid.UUID
    timestamp: datetime  
    value: float 

class TankDataTransform(BaseModel):
    primo_id: str
    tank_type: str
    tank_number: Optional[int]
    Level: Optional[float]
    Volume: Optional[float]
    InchesUntilAlarm: Optional[float]
    InchesToESD: Optional[float]
    TimeUntilESD: Optional[float]
    Capacity: Optional[float]
    ID: Optional[float]


class TankType(Enum):
    Oil = "Oil"
    Water = "Water"

class GetTanksReq(BaseModel):
    tank_types: set[TankType] = Field(default={TankType.Oil, TankType.Water})
    primo_ids: set[str]

#class TankDataResponse(BaseModel):
    #tanks: list[TankData]

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
    td.ts AS timestamp,
    td.value
FROM sdm_dba.data_catalog dc
JOIN last_known_values td ON dc.key_metric = td.key_metric
WHERE metric_nice_name ~ :the_regex AND dc.source_id = ANY(:primo_ids::VARCHAR[]) AND rnk = 1
"""

tank_metrics = ["Level", "Volume", "InchesUntilAlarm", "InchesToESD", "TimeUntilESD", "Capacity", "ID"]
tank_metrics_str = "|".join(tank_metrics) # Level|Volume-Current|InchesUntilAlarm|InchestoESD|Interface|Oil-Level|Capacity|ID
tank_types_strs = [tank_type.value for tank_type in TankType] # Water, Oil as defined above 
tank_types_str = "|".join(tank_types_strs) # Water|Oil
print(tank_types_str)


#fetching the data
async def fetch_tank_data(req: GetTanksReq) -> Optional[pl.DataFrame]:
    tank_types_strs = [tank_type.value for tank_type in req.tank_types]
    tank_types_str = "|".join(tank_types_strs)
    print("pp", tank_types_str)
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

    values = pl.col("value")
    columns = pl.col("tank_metric")
    lf = lf.group_by("primo_id", "tank_type", "tank_number").agg(
        **{metric: values.filter(columns == metric).first().alias(metric) for metric in tank_metrics}
    )

    collect_data = lf.collect()
    return collect_data.to_dicts()

     
@app.post("/tanks")
async def get_tank_data(req: GetTanksReq):
    fetch_tanks = await fetch_tank_data(req)
    transform_tanks = transform_tank_data(fetch_tanks)
    res = TankDataTransformResponse.model_validate({"tanks": transform_tanks})
    return res

@app.get("/")
def read_root():
    return {"Hello": "Worldppp, weeeepooooo, why port fail?"}

def main():
    uvicorn.run("src.main:app", host="0.0.0.0", port=8000)

if __name__ == "__main__":
    main()