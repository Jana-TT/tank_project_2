from contextlib import asynccontextmanager

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from . import version
from .facilities_endpoint import (
    FacilitiesResponse,
    fetch_facilities_data,
    transform_facilities_data,
)
from .instrumentation import (
    instrument_app,
    setup_tracing,
)
from .pool import PG
from .tank_ts_endpoint import (
    GetTanksTimeDataReq,
    TankTsDataTransformResponse,
    fetch_tank_ts_data,
    transform_tank_ts_data,
)
from .tanks_endpoint import (
    GetTanksReq,
    TankDataTransformResponse,
    fetch_tank_data,
    transform_tank_data,
)


@asynccontextmanager
async def lifespan(app: FastAPI):
    yield
    await PG.close()


setup_tracing()

app = FastAPI(lifespan=lifespan, debug=True, version=version)

instrument_app(app)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.post("/tanks")
async def get_tank_data(req: GetTanksReq) -> TankDataTransformResponse:
    fetch_tanks = await fetch_tank_data(req)
    transform_tanks = transform_tank_data(fetch_tanks)
    res = TankDataTransformResponse.model_validate({"tanks": transform_tanks})
    return res


@app.post("/facilities")
async def get_facilities_data() -> FacilitiesResponse:
    fetch_facilities = await fetch_facilities_data()
    transform_facilites = transform_facilities_data(fetch_facilities)
    res_fac = FacilitiesResponse.model_validate({"facilities": transform_facilites})
    return res_fac


@app.post("/tanks_timestamps")
async def get_tank_ts_data(req: GetTanksTimeDataReq) -> TankTsDataTransformResponse:
    fetch_tank_ts = await fetch_tank_ts_data(req)
    transform_tanks_ts = transform_tank_ts_data(fetch_tank_ts)
    res_tank_ts = TankTsDataTransformResponse.model_validate(
        {"timeseries": transform_tanks_ts}
    )
    return res_tank_ts


@app.get("/")
def read_root():
    return {"The Tank Project"}
