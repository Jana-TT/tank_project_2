from contextlib import asynccontextmanager
from enum import Enum
from pydantic import BaseModel, Field
from fastapi import FastAPI
import uvicorn
from src.pool import PG
from fastapi.middleware.cors import CORSMiddleware


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
    unique_id: str
    timestamp: str
    value: float 

class TankType(Enum):
    Oil = "Oil"
    Water = "Water"

class GetTanksReq(BaseModel):
    tank_types: set[TankType] = Field(default={TankType.Oil, TankType.Water})
    primo_ids: set[str]

class TankDataResponse(BaseModel):
    tanks: list[TankData]

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
    dc.key_metric,
    td.ts,
    td.value
FROM sdm_dba.data_catalog dc
JOIN last_known_values td ON dc.key_metric = td.key_metric
WHERE metric_nice_name ~ :the_regex AND dc.source_id = ANY(:primo_ids::VARCHAR[]) AND rnk = 1
"""

tank_metrics = ["Level", "Volume-Current", "InchesUntilAlarm", "InchesToESD", "Interface", "Oil-Level", "Capacity", "ID"]

async def fetch_tank_data(req: GetTanksReq):
    tank_types_strs = [tank_type.value for tank_type in req.tank_types] # Water, Oil as defined above 
    tank_types_str = "|".join(tank_types_strs) # Water|Oil
    tank_metrics_str = "|".join(tank_metrics) # Level|Volume-Current|InchesUntilAlarm|InchestoESD|Interface|Oil-Level|Capacity|ID
    the_regex = f'^(ESD-)?({tank_types_str})Tank[0-9]*({tank_metrics_str})$' 
    #Optional matches "ESD-", matches either (Water|Oil), matches the string literal 'Tank', [0-9]* matches zero or more digits, 
    #matches one of these (Level|Volume-Current|InchesUntilAlarm|InchestoESD|Interface|Oil-Level|Capacity|ID)
    #$ the regex ends at the end of the string

    primo_ids_list = list(req.primo_ids)

    df = await PG.fetch(TANKS_QUERY, the_regex=the_regex, primo_ids=primo_ids_list)
    if df is None:
        return []
    return df.to_dicts()
     
@app.post("/tanks", response_model=TankDataResponse)
async def get_tank_data(req: GetTanksReq):
    tanks = await fetch_tank_data(req)
    return {"tanks": tanks}

@app.get("/")
def read_root():
    return {"Hello": "Worldppp, weeeepooooo, why port fail?"}

def main():
    uvicorn.run("src.main:app", host="0.0.0.0", port=8000)

if __name__ == "__main__":
    main()