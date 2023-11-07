import mysql.connector as mc

databaseName = "python_test_db"

mysql_connector = mc.connect(
    host = "localhost",
    user = "root",
    passwd = "Siam@1971",
    database = databaseName
)

my_coursor = mysql_connector.cursor()

my_query = """
        create table Teacher(
            name varchar(255) not null,
            id varchar(5) primary key,
            email varchar(255) not null,
            subject varchar(100)
        );
        """

my_coursor.execute(my_query)