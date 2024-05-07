import os

import asyncpg
from async_db_polars.pgdb import PGDB
from dotenv import load_dotenv

load_dotenv()
DATABASE_PASSWORD = os.environ["DATABASE_PASSWORD"]

db = PGDB()

async def init():
    pool = await asyncpg.create_pool(user='fl0user', password=DATABASE_PASSWORD, database='tag', host='ep-purple-union-28479376.us-east-2.aws.neon.fl0.io', port=5432, ssl='require')
    if pool is None:
        raise Exception("Could not connect to database")
    db.init(pool)


async def close():
    await db.pool.close()