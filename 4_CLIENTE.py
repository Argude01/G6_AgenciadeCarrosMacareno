#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
from PIL import ImageTk, Image
import clientes_database
import os

window = Tk()

#titulo  de la pantalla
window.title('Registro de clientes')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

nombre = StringVar()
apellido = StringVar()
identidad = StringVar()
rtn = StringVar()
telefono = StringVar()
direccion = StringVar()

# Funciones de los botones
def crear_sala():
    nombre = caja_nombre.get()
    apellido = caja_apellido.get()
    identidad = caja_identidad.get()
    rtn = caja_rtn.get()
    telefono = caja_telefono.get()
    direccion = caja_direccion.get()
    demo_db = clientes_database.MyDatabase()
    demo_db.insert_db(nombre, apellido, identidad, rtn, telefono, direccion)

def open_auto():
    window.destroy()
    os.system("5_AUTOS.py")

#Estructura de los frame
fondo2  = Frame(window,
                bg='#A012D1',
                width=400,
                height=300)
fondo2.place(x=25, y=386)

fondo3  = Frame(window,
                bg='#f0f0f0',
                width=350,
                height=600)
fondo3.place(x=50, y=58) 

#Label del fondo 2
Label(fondo3,
        text='REGISTRO DE NUESTROS\nCLIENTES',
        bg='#f0f0f0',
        font=('Century Gothic', '14', 'bold')).place(x=70, y=10)

image = Image.open('logo-macareno.png')
image = image.resize((150, 100), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=100, y=65)

#Etiquetas de la caja modelo
Label(fondo3,
        text='NOMBRE',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=190)

caja_nombre = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_nombre.place(x=130, y=190)

#Etiquetas de la caja año
Label(fondo3,
        text='APELLIDO',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=240)

caja_apellido = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_apellido.place(x=130, y=240)

#Etiquetas de la caja color
Label(fondo3,
        text='IDENTIDAD',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=290)

caja_identidad = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_identidad.place(x=130, y=290)

#Etiquetas de la caja cliente
Label(fondo3,
        text='RTN',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=340)

caja_rtn = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_rtn.place(x=130, y=340)

#Etiqueta de la caja telefono
Label(fondo3,
        text='TELEFONO',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=390)

caja_telefono = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_telefono.place(x=130, y=390)

# FUNCIONES DEL COMBOBOX

db_demo = clientes_database.MyDatabase()
db_demo.read_db()
registro = clientes_database.data
for user in clientes_database.data:
        print(user)

#Etiqueta de la caja direccion
Label(fondo3,
        text='DIRECCION',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=440)

n = StringVar()
caja_direccion = ttk.Combobox(window,
                        width = 18, 
                        textvariable =n,
                        font=('Century Gothic', '12', 'bold'))

caja_direccion.configure(foreground='#4D5064')
caja_direccion['values'] = (registro)
caja_direccion.place(x=180, y=498)


#Botones del fondo 2

btn_registrar = Button(fondo3, 
                        text='REGISTRAR',
                        font=('Century Gothic', '12', 'bold'),
                        width=29,
                        height=2,
                        bg='#D047EB',
                        command = lambda:[crear_sala(), open_auto()])
btn_registrar.place(x=40, y=510)


window.mainloop()
