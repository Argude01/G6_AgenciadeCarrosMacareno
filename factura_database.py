import mysql.connector

data = []

data2 = []

class MyDatabase:

    def open_connection(self):
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_ventas_de_autos")
        return connection

    def insert_db(self, fecha, id_direccion, precio, isv, total):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_facturas(FECHA, ID_DIRECCION, PRECIO, ISV, TOTAL) VALUES (%s,%s,%s,%s,%s)"
        data = (fecha, id_direccion, precio, isv, total)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()

    def read_db(self):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "SELECT PRECIO FROM TBL_AUTOS"
        cursor.execute(query)
        for fila in cursor:
            data.append(fila)   
        my_connection.close()


    def leer_db(self):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "SELECT * FROM TBL_DIRECCIONES"
        cursor.execute(query)
        for fila in cursor:
            data2.append(fila)   
        my_connection.close()