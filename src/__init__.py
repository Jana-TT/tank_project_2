import os

import tomllib
from dotenv import load_dotenv

load_dotenv()

os.environ["TZ"] = "UTC"

file_path = os.path.join(os.path.dirname(__file__), "..", "pyproject.toml")
file_path = os.path.abspath(file_path)

with open(file_path, "rb") as f:
    data = tomllib.load(f)

poetry_info = data["tool"]["poetry"]

PROJECT_NAME = poetry_info["name"]
version = poetry_info["version"]
