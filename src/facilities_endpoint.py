from typing import Optional
from pydantic import BaseModel
from src.pool import PG


class FacilitiesData(BaseModel):
    facility_name: Optional[str]
    primo_id: Optional[int]
    primo_prprty: int
    completion_name: str


class FacilitiesResponse(BaseModel):
    facilities: list[FacilitiesData]

FACILITIES_QUERY = """--sql
    SELECT mf.facility_name, mf.primo_prprty AS primo_id, mc.primo_prprty, mc.completion_name
    FROM mrte_dba.mrte_facility AS mf
    RIGHT JOIN mrte_dba.mrte_completion mc ON mc.fac_primo_prprty = mf.primo_prprty 
"""

#fetching the data
async def fetch_facilities_data():
    df_fac = await PG.fetch(FACILITIES_QUERY)
    if df_fac is None:
        return []
    return df_fac.to_dicts()