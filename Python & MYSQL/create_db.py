import mysql.connector

mydbconnection =  mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd="Siam@1971"
)

print(mydbconnection)

db_naem = "python_test_db"

mycursor = mydbconnection.cursor()

sqlquere = "create database " + db_naem

mycursor.execute(sqlquere)
