from typing import Any

from pydantic import BaseModel

from src.pool import PG


class FacilitiesData(BaseModel):
    primo_id: int
    division_name: str
    division_id: int
    facility_name: str
    route_name: str
    foreman_name: str


class FacilitiesResponse(BaseModel):
    facilities: list[FacilitiesData]


FACILITIES_QUERY = """--sql
    SELECT mf.primo_prprty AS primo_id, fd.division_name, mf.division_id, mf.facility_name, rou.route_name, rou.foreman_name
    FROM mrte_dba.mrte_facility AS mf
    JOIN mrte_dba.routes AS rou ON rou.route_id = mf.route_id
    JOIN fdm_dba.fdm_division AS fd ON fd.division_id = mf.division_id
"""


# fetching the data
async def fetch_facilities_data() -> list[dict[str, Any]]:
    df_fac = await PG.fetch(FACILITIES_QUERY)
    if df_fac is None:
        return []
    return df_fac.to_dicts()
