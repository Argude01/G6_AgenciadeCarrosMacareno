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

    def insert_db(self, nombre, apellido, identidad, rtn, telefono, id_direccion):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_clientes(NOMBRE, APELLIDO, IDENTIDAD, RTN, TELEFONO, ID_DIRECCION) VALUES (%s,%s,%s,%s,%s,%s)"
        data = (nombre, apellido, identidad, rtn, telefono, id_direccion)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()

    def read_db(self):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "SELECT * FROM TBL_DIRECCIONES"
        cursor.execute(query)
        for fila in cursor:
            data.append(fila)   
        my_connection.close()     
