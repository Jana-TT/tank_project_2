import asyncio
import random
import uuid

import polars as pl
from pool import PG  # Assuming PG has async methods `fetch` and `insert`

QUERY_T = """--sql
    SELECT *
    FROM sdm_dba.data_catalog
"""


# Fetch existing entries
async def get_data():
    entries = await PG.fetch(QUERY_T)
    return entries


# Function to generate a unique source_key
def generate_source_key():
    return str(uuid.uuid4())[:8]


# Function to generate new tank data
def generate_new_tank_data(primo_id, existing_tank_numbers, uom, division_id):
    new_entries = []
    num_new_tanks = random.randint(2, 5)  # Randomly add 2-5 new tanks

    for _ in range(num_new_tanks):
        new_source_key = generate_source_key()
        if existing_tank_numbers:
            new_tank_number = max(existing_tank_numbers) + 1  # New tank number
        else:
            new_tank_number = 1
        new_entry_level = (
            new_source_key,
            primo_id,
            f"OilTank{new_tank_number}Level",
            "in",
            division_id,
        )
        new_entry_volume = (
            new_source_key,
            primo_id,
            f"OilTank{new_tank_number}Volume",
            "bbl",
            division_id,
        )
        new_entries.append(new_entry_level)
        new_entries.append(new_entry_volume)
        existing_tank_numbers.append(new_tank_number)

    return new_entries


# Main function to generate and insert new entries
# Main function to generate and insert new entries
async def main():
    entries = await get_data()

    if entries is None:
        return []

    primo_ids = set(entry[1] for entry in entries)  # Get unique primo_ids

    for primo_id in primo_ids:
        existing_tank_numbers = [
            int(entry[2].split("Tank")[1].split("Level")[0])
            for entry in entries
            if entry[1] == primo_id and "OilTank" in entry[2]
        ]
        uom = [entry[3] for entry in entries if entry[1] == primo_id][0]
        division_id = int(
            [entry[4] for entry in entries if entry[1] == primo_id][0]
        )  # Cast division_id to int

        new_entries = generate_new_tank_data(
            primo_id, existing_tank_numbers, uom, division_id
        )

        # Convert new entries to DataFrame
        columns = ["source_key", "source_id", "metric_nice_name", "uom", "division_id"]
        df_new_entries = pl.DataFrame(new_entries, schema=columns)

        # Insert DataFrame into the database
        await PG.insert(df_new_entries, "sdm_dba.data_catalog")


# Run the main function
if __name__ == "__main__":
    asyncio.run(main())
