import os

import tomllib
from dotenv import load_dotenv

load_dotenv()

os.environ["TZ"] = "UTC"
with open("pyproject.toml", "rb") as f:
    data = tomllib.load(f)

poetry_info = data["tool"]["poetry"]

PROJECT_NAME = poetry_info["name"]
version = poetry_info["version"]
