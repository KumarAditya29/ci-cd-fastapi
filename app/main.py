from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "CI/CD Pipeline Running"}

@app.get("/secret")
def get_secret():
    return {"secret_value": os.getenv("APP_SECRET")}