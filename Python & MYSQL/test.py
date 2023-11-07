import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="Siam@1971"
)

print(mydb)