from http.server import BaseHTTPRequestHandler, HTTPServer
import mysql.connector
from mysql.connector import Error
import numpy as np
import pandas as pd
import tensorflow as tf
from sklearn.preprocessing import MinMaxScaler
from tensorflow import keras
from tensorflow.keras import layers

def connect_to_database():
    try:
        connection = mysql.connector.connect(
            host='aws.connect.psdb.cloud',
            database='parkirin',
            user='7t346k9vz7i7i1zhkkas',
            password='pscale_pw_tgAZ3OhcwxfFnrJriXipHLlif67i2LWc0VB1j39nOYB'
        )
        if connection.is_connected():
            print('Connected to MySQL database')
        return connection
    except Error as e:
        print('Error while connecting to MySQL:')

class MyRequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            self.wfile.write(b'Hello, World!')
        elif self.path == '/data':
            self.send_response(200)
            self.send_header('Content-type', 'text/plain')
            self.end_headers()

            # Retrieve data from the database
            connection = connect_to_database()
            cursor = connection.cursor()
            cursor.execute('SELECT * FROM logs')
            rows = cursor.fetchall()

            # Format the data and send the response
            response = ''
            for row in rows:
                response += str(row) + '\n'
            self.wfile.write(response.encode())
            cursor.close()
            connection.close()
        else:
            self.send_response(404)
            self.end_headers()
            self.wfile.write(b'404 - Not Found')

def run_server():
    connect_to_database()
    server_address = ('', 8000)
    httpd = HTTPServer(server_address, MyRequestHandler)
    print('Starting server...')
    httpd.serve_forever()

if __name__ == '__main__':
    run_server()