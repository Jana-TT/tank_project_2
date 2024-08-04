from typing import Any, Optional

import polars as pl
from pydantic import BaseModel

from src.constants import PROPERTY_ID
from src.pool import PG


class FacilitiesData(BaseModel):
    property_id: int
    division_name: str
    division_id: int
    facility_name: str
    route_name: str
    foreman_name: str


class FacilitiesResponse(BaseModel):
    facilities: list[FacilitiesData]


FACILITIES_QUERY = f"""--sql
    SELECT mf.primo_prprty AS {PROPERTY_ID}, fd.division_name, mf.division_id, mf.facility_name, rou.route_name, rou.foreman_name
    FROM mrte_dba.mrte_facility AS mf
    JOIN mrte_dba.routes AS rou ON rou.route_id = mf.route_id
    JOIN fdm_dba.fdm_division AS fd ON fd.division_id = mf.division_id
"""


# fetching the data
async def fetch_facilities_data() -> Optional[pl.DataFrame]:
    df_fac = await PG.fetch(FACILITIES_QUERY)
    return df_fac


def transform_facilities_data(df: Optional[pl.DataFrame]) -> list[dict[str, Any]]:
    if df is None:
        return []
    return df.to_dicts()
