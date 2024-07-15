from typing import Any, Optional

import polars as pl
from pydantic import BaseModel

from src.pool import PG


class FacilitiesData(BaseModel):
    primo_id: str
    division_name: str
    division_id: int
    entity_type: str
    entity_name: Optional[str]
    route_name: str
    foreman_name: str


class FacilitiesResponse(BaseModel):
    facilities: list[FacilitiesData]


FACILITIES_QUERY = """--sql
    SELECT mf.facility_name, mf.primo_prprty AS primo_id, mc.primo_prprty, mc.completion_name, fd.division_name, mc.division_id, rou.route_name, rou.foreman_name
    FROM mrte_dba.mrte_facility AS mf
    RIGHT JOIN mrte_dba.mrte_completion mc ON mc.fac_primo_prprty = mf.primo_prprty 
    LEFT JOIN fdm_dba.fdm_division fd ON fd.division_id = mc.division_id
    JOIN mrte_dba.routes rou ON rou.division_id = mc.division_id
"""


# fetching the data
async def fetch_facilities_data() -> Optional[pl.DataFrame]:
    df_fac = await PG.fetch(FACILITIES_QUERY)
    return df_fac


# transform the data
def transform_facilities_data(df: Optional[pl.DataFrame]) -> list[dict[str, Any]]:
    if df is None:
        return []

    lf = df.lazy()
    lf = lf.with_columns(
        pl.when(pl.col("primo_id").is_null())
        .then(pl.lit("WEL"))
        .otherwise(pl.lit("FAC"))
        .alias("entity_type")
    )

    lf = lf.with_columns(
        pl.coalesce(pl.col("facility_name"), pl.col("completion_name")).alias(
            "entity_name"
        ),
        pl.coalesce(pl.col("primo_id"), pl.col("primo_prprty")).alias("primo_id"),
    )

    lf = lf.drop("facility_name", "completion_name", "primo_prprty")
    lf = lf.unique(subset=["primo_id"])
    lf = lf.sort(pl.col("division_id"))
    lf = lf.with_columns(pl.col("primo_id").cast(pl.String))

    result = lf.collect()
    return result.to_dicts()
