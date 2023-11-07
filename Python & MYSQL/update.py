import mysql.connector

db_name = "python_test_db"

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="Siam@1971",
    database=db_name
)

mycursor = mydbconnection.cursor()

sqlquery = """
            UPDATE Student
            SET Name = 'Siam'
            WHERE Name = 'KKP'
            """
mycursor.execute(sqlquery)
mydbconnection.commit()

print("Update table successful")