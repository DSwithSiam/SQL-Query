import mysql.connector 

db_naem = "python_test_db"

mydbconnection =  mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd="Siam@1971",
    database = db_naem
)

print(mydbconnection)

mycursor = mydbconnection.cursor()

sqlquere = """
        CREATE TABLE STUDENT (
            ROLL VARCHAR(4),
            NAME VARCHAR(100)
        )
        """

mycursor.execute(sqlquere)
 