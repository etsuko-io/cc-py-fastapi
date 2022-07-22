from dotenv import load_dotenv
from pydantic import BaseSettings


load_dotenv()


class Settings(BaseSettings):
    pass

    class Config:
        env_file = "../../../.env"
