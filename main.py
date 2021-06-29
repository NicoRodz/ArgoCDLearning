from flask import Flask
import os

app = Flask(__name__)

secret = os.environ.get("MY_SECRET")

@app.route("/")
def hello_world():
    return "Hello, World! asdasdsdas  "+ secret 

