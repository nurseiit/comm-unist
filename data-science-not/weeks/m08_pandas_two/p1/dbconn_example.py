"""
Here you can see an example of (i) how to connect and fetch data from a database hosted remotely and
(ii) how to create a pandas dataframe using the data the data fetched from the db

The database "mydb" is hosted on a server at the address 114.70.14.56:10051 (host:port)
It is a PostgreSQL database, so to connect to it you need to install and import the package 'psycopg2'
To connect to a database, you also need credentials (username and password). These have been given to you.

This example fetches data from the table "deniro" in "mydb", which contains information about
all Robert De Niro's movies: year, title and Rotten Tomatoes' rating
"""

import psycopg2
import pandas as pd


# use the credentials (user/password) provided to you
db_user, db_password, db_host, db_port, db_name = 'myuser026', '026', '114.70.14.56', '10051', 'mydb'

try:
    # create database connection
    connection = psycopg2.connect(user=db_user,
                                  password=db_password,
                                  host=db_host,
                                  port=db_port,
                                  database=db_name)

    print("---Connecting to database...")
    cursor = connection.cursor()
    print("---done.\n")

    print("Running query 1...\n")
    # query 1
    query1 = "select * from {0}".format('deniro')               # This is a SQL query (fetch all rows in table 'deniro')
    query1_output = query1
    cursor.execute(query1_output, ('deniro', id))
    records1 = cursor.fetchall()

    print("---Show column info:")
    col_names = []
    for desc in cursor.description:
        print(desc)
        col_names.append(desc[0])
    cursor.close()

    print("---Show first 35 events fetched by query 1:")
    for record in records1[:35]:
        print(record)

    # create pandas dataframe with data fetched from db
    pd1 = pd.DataFrame(records1, columns=col_names)

    # query 2
    print("\n\nRunning query 1...\n")
    cursor = connection.cursor()
    query2 = "select * from {0} where rating > 70".format('deniro')                  # This is a SQL query (fetch all movies with rating higher than 70)
    query2_output = query2
    cursor.execute(query2_output, ('deniro', id))
    records2 = cursor.fetchall()

    print("\n\n---Show all {0} movies with rating > 70:".format(len(records2)))
    for record in records2:
        print(record)



except (Exception, psycopg2.Error) as error:

    print("Error fetching data from PostgreSQL table", error)

finally:
    # close connection
    # if (connection):
    cursor.close()
    connection.close()
    print("PostgreSQL connection is closed \n")



print("\n\n Printing head of dataframe:")
print(pd1.head())