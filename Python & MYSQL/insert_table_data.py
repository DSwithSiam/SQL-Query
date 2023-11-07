import mysql.connector 

db_name = "python_test_db"

mydbconnection =  mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd="Siam@1971",
    database = db_name,
)

print(mydbconnection)

mycursor = mydbconnection.cursor()

sqlquere = """
        insert into Teacher (name, id, email, subject) 
            values ('Tamim', '1002', 'tamim@gmail.com', 'bangla')
        """

mycursor.execute(sqlquere)
mydbconnection.commit()

print("Insert table Successful")