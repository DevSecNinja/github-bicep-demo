from flask import Flask, make_response, request
import math

print("Hello world!")

# Clear text password sample from https://codeql.github.com/codeql-query-help/python/py-clear-text-logging-sensitive-data/

app = Flask("Leak password")

@app.route('/')
def index():
    password = request.args.get("password")
    resp = make_response(render_template(...))
    resp.set_cookie("password", password)
    return resp

# Unreachable code sample from https://codeql.github.com/codeql-query-help/python/py-unreachable-statement/
def my_div(x, y):
    return math.floor(x / y)
    remainder = x - math.floor(x / y) * y
