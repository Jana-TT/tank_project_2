import os

import asyncpg
from dotenv import load_dotenv

from async_db_polars.pgdb import PGDB

load_dotenv()
DATABASE_PASSWORD = os.environ["DATABASE_PASSWORD"]


async def init():
    pool = await asyncpg.create_pool(user='postgres.zgrwyooxarbzhotcramx', password=DATABASE_PASSWORD, database='postgres', host='aws-0-us-east-1.pooler.supabase.com', port=5432)
    if pool is None:
        raise Exception("Could not connect to database")
    return pool

PG = PGDB(init)