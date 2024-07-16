from contextlib import asynccontextmanager

import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from src.facilities_endpoint import (
    FacilitiesResponse,
    fetch_facilities_data,
    transform_facilities_data,
)
from src.tanks_endpoint import (
    GetTanksReq,
    TankDataTransformResponse,
    fetch_tank_data,
    transform_tank_data,
)


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


@app.get("/")
def read_root():
    return {"The Tank Project"}


def main():
    uvicorn.run("src.main:app", host="0.0.0.0", port=8000)


if __name__ == "__main__":
    main()


#  await PG.close()
