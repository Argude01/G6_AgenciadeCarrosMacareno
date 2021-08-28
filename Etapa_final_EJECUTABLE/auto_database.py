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

    def insert_db(self, modelo, precio, color, año, id_cliente):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_autos(MODELO, PRECIO, COLOR, AÑO, ID_CLIENTE) VALUES (%s,%s,%s,%s,%s)"
        data = (modelo, precio, color, año, id_cliente)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()


    def read_db(self):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "SELECT MODELO FROM TBL_MODELOS"
        cursor.execute(query)
        for fila in cursor:
            data.append(fila)   
        my_connection.close()

    def leer_db(self):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "SELECT ID_CLIENTE, NOMBRE FROM TBL_CLIENTES"
        cursor.execute(query)
        for fila in cursor:
            data2.append(fila)   
        my_connection.close()     


