import os

import asyncpg
from async_db_polars.pgdb import PGDB

DATABASE_PASSWORD = os.environ["DATABASE_PASSWORD"]


async def init():
    pool = await asyncpg.create_pool(
        user="janatt",
        password=DATABASE_PASSWORD,
        database="janadb",
        host="postgres.wolfeydev.com",
        port=5432,
    )
    if pool is None:
        raise Exception("Could not connect to database")
    return pool


PG = PGDB(init)
