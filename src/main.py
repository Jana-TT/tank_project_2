from contextlib import asynccontextmanager
from enum import Enum
from pydantic import BaseModel, Field
from fastapi import FastAPI
import uvicorn
from src.pool import PG, init
from fastapi.middleware.cors import CORSMiddleware


@asynccontextmanager
async def lifespan(app: FastAPI):
    await init()
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
    primo_id: int
    scada_id: str
    tank_type: str
    tank_number: int
    level_in_inches: float

class TankType(Enum):
    Oil = "Oil"
    Water = "Water"

class GetTanksReq(BaseModel):
    tank_types: set[TankType] = Field(default={TankType.Oil, TankType.Water})
    primo_ids: set[int]

class TankDataResponse(BaseModel):
    tanks: list[TankData]

TANKS_QUERY = """--sql 
    WITH last_known_values AS (
        SELECT 
            td.key_metric,
            FIRST_VALUE(td.ts) OVER w as ts,
            FIRST_VALUE(td.value) OVER w as value
        FROM sdm_dba.timeseries_data td
        GROUP BY td.key_metric
        WINDOW w as (PARTITION BY td.key_metric ORDER BY td.ts DESC)
    )
    SELECT
        dc.source_id,
        dc.source_key,
        dc.metric_nice_name,
        dc.key_metric,
        td.ts,
        td.value
    FROM 
        sdm_dba.data_catalog dc
    JOIN 
        last_known_values td ON dc.key_metric = td.key_metric
    WHERE 
        metric_nice_name ~ :mah_regex
    GROUP BY 
        dc.source_id, dc.source_key, dc.metric_nice_name, dc.key_metric, td.ts, td.value
"""

async def fetch_tank_data(req: GetTanksReq):
    tank_types_strs = map(lambda x: x.value, req.tank_types)
    tank_types_str = "|".join(tank_types_strs)
    tank_metrics = ["Level", "Volume-Current", "InchesUntilAlarm", "InchesToESD", "Interface", "Oil-Level", "Capacity", "ID"]
    tank_metrics_str = "|".join(tank_metrics)
    mah_regex = f'^(ESD-)?({tank_types_str})Tank[0-9]*({tank_metrics_str})$'

    df = await PG.fetch(TANKS_QUERY, mah_regex=mah_regex, primo_ids=req.primo_ids, tank_types=req.tank_types)
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