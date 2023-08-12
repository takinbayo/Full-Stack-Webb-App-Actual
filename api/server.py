import json
from flask import Flask
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
CORS(app)
HOST = open("db_ip_addr").read().rstrip()
PORT = "5432"

@app.route('/')
def index():
    return json.dumps({'msg': "success"})

@app.route('/all')
def all_cars():
    with psycopg2.connect(
    host=HOST,
    port=PORT,  # whatever port postgres is running on
    database="cars",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("select * from Cars")
            cars = cursor.fetchall()
    conn.close()
    return json.dumps({'cars': cars if cars else "No one's home..."})

@app.route('/<id>')
def car_by_id(id):
    with psycopg2.connect(
    host=HOST,
    port=PORT,   # whatever port postgres is running on
    database="cars",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("select * from Cars where id = (%s)", (id,))
            cars = cursor.fetchone()
    conn.close()
    return json.dumps({'cars': cars if cars else "That car doesn't exist"})

@app.route('/by_year/<year>')
def cars_by_year(year):
    with psycopg2.connect(
    host=HOST,
    port=PORT,   # whatever port postgres is running on
    database="cars",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("select * from Cars where year = (%s)", (year,))
            cars = cursor.fetchall()
    conn.close()
    return json.dumps({'cars': cars if cars else "That car doesn't exist"})

@app.route('/by_make/<make>')
def cars_by_make(make):
    with psycopg2.connect(
    host=HOST,
    port=PORT,   # whatever port postgres is running on
    database="cars",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("select * from Cars where make = (%s)", (make,))
            cars = cursor.fetchall()
    conn.close()
    return json.dumps({'cars': cars if cars else "That car doesn't exist"})


app.run(host='0.0.0.0', port=8000, debug=True)
