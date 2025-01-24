from fastapi import FastAPI
import subprocess

app = FastAPI()

@app.post("/ci/UNSERsplit")
def on_push() -> None:
    subprocess.run("./clone.sh")

@app.get("/ci/UNSERsplit")
def on_restart() -> None:
    subprocess.run("./restart.sh")