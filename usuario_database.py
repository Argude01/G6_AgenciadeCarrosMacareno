import mysql.connector

data = []

class MyDatabase:

    def open_connection(self):
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_ventas_de_autos")
        return connection

    def insert_db(self, correo, clave, años):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_registros(CORREO, CLAVE, AÑOS) VALUES (%s,%s,%s)"
        data = (correo, clave, años)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()

   


