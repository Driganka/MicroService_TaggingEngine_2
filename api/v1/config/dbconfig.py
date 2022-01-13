# from pydantic import BaseSettings


# class Settings(BaseSettings):
#     class Config:
#         env_file = ".env"

from pymongo import MongoClient
connection = MongoClient()
