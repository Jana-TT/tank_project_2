import importlib.metadata
import os

from dotenv import load_dotenv

load_dotenv()

os.environ["TZ"] = "UTC"

PKG_METADATA = importlib.metadata.metadata("tank-project")
author = PKG_METADATA["Author"]
PROJECT_NAME = PKG_METADATA["Name"]
version = PKG_METADATA["Version"]
