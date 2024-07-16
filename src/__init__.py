import importlib.metadata
import os

from dotenv import load_dotenv

load_dotenv()

os.environ["TZ"] = "UTC"

APP_ENV = os.environ["APP_ENV"]
PKG_METADATA = importlib.metadata.metadata("thermostatter-api")
author = PKG_METADATA["Author"]
PROJECT_NAME = PKG_METADATA["Name"]
version = PKG_METADATA["Version"]
