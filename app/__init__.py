import os

from dotenv import load_dotenv

load_dotenv()

os.environ["TZ"] = "UTC"


PROJECT_NAME = "tanks-api"
version = "0.1.33"  # make sure to change the version
