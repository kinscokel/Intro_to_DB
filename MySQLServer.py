# MySQLServer.py

import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        # Connect to MySQL Server (update user and password as needed)
        conn = mysql.connector.connect(
            host="localhost",
            user="your_username",       # Replace with your MySQL username
            password="your_password"    # Replace with your MySQL password
        )

        cursor = conn.cursor()

        try:
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        except mysql.connector.Error as err:
            print(f"Failed creating database: {err}")
        finally:
            cursor.close()
            conn.close()

    except mysql.connector.Error as err:
        print(f"Error: Could not connect to MySQL Server. {err}")

if __name__ == "__main__":
    create_database()