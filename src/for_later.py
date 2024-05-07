"""from contextlib import asynccontextmanager
from pydantic import BaseModel, Field
from fastapi import FastAPI
import uvicorn
from src.pool import db
from src.pool import db, init, close
from fastapi.middleware.cors import CORSMiddleware


@asynccontextmanager
async def lifespan(app: FastAPI):
    await init()
    yield
    await close()


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


class TankDataResponse(BaseModel):
    tanks: list[TankData]


TANK_DATA_QUERY = """
"""WITH tanks AS (
    SELECT
        dc.source_id as primo_id,
        dc.source_key AS scada_id, 
        td.key_metric, 
        REGEXP_SUBSTR (metric_nice_name, '(Oil|Water)') AS tank_type, 
        CAST(REGEXP_SUBSTR (metric_nice_name, '[0-9]') AS INTEGER) AS tank_number, 
        td.value AS level_in_inches, 
        td.ts AS time_stamp,
        ROW_NUMBER() OVER (PARTITION BY td.key_metric ORDER BY td.ts DESC) AS rnk 
    FROM sdm_dba.data_catalog dc
    JOIN sdm_dba.timeseries_data td ON td.key_metric = dc.key_metric
    WHERE metric_nice_name LIKE '%Level%'
    ORDER BY td.ts DESC
)
SELECT *
FROM tanks
WHERE tank_type = ANY(:tank_types::VARCHAR[]) AND primo_id = ANY(:primo_ids::VARCHAR[]) AND rnk = 1;"""
"""
class GetTanksReq(BaseModel):
    primo_ids: list[str]
    tank_types: list[str] = Field(default=["Oil", "Water"])

async def fetch_tank_data(req: GetTanksReq):
    df = await db.fetch(TANK_DATA_QUERY, primo_ids = req.primo_ids, tank_types = req.tank_types)
    if df is None: return []
    return df.to_dicts()


@app.post("/tanks", response_model= TankDataResponse)
async def get_tank_data(req: GetTanksReq):
    tanks = await fetch_tank_data(req)
    return {"tanks" : tanks}


@app.get("/")
def read_root():
    return {"Hello": "Worldppp, weeeepooooo"}

def main():
    uvicorn.run("src.main:app", host="0.0.0.0", port=8000)


if __name__ == "__main__":
    main()"""