#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
import factura_database
from PIL import ImageTk, Image
import os
from datetime import datetime

#Cración de la ventana
window = Tk()

#titulo  de la pantalla
window.title('Registro de autos')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

# Funciones de los botones
fecha = StringVar()
direccion = StringVar()
precio = StringVar()
isv = StringVar()

def insertar():
    fecha = caja_fecha.get()
    direccion = caja_direccion.get()
    precio = caja_precio.get()
    isv = caja_isv.get()
    total = caja_total.get()
    demo_db = factura_database.MyDatabase()
    demo_db.insert_db(fecha, direccion, precio, isv, total)


def abrir_menu():
    window.destroy()
    os.system("1_PRINCIPAL.exe")


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
fondo3.place(x=50, y=45) 


#Label del fondo 3
Label(fondo3,
        text='FACTURA DE COMPRA',
        bg='#f0f0f0',
        font=('Century Gothic', '14', 'bold')).place(x=80, y=10)


#lOGO

image = Image.open('logo-macareno.png')
image = image.resize((150, 100), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=95, y=60)

#Funciones para leer otras tablas programa

db_demo = factura_database.MyDatabase()
db_demo.read_db()
registro = factura_database.data
for user in factura_database.data:
        print(user)

print('******************************')
db_demo2 = factura_database.MyDatabase()
db_demo2.leer_db()
registro2 = factura_database.data2
for user2 in factura_database.data2:
        print(user2)


#Etiquetas de la factura
Label(fondo3,
        text='factura N°',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=35, y=200)


caja_numero = Entry(fondo3,
                    
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
#caja_numero.insert(0, numero)
caja_numero.place(x=130, y=200)


#Etiquetas de la caja fecha
now = datetime.now()
Label(fondo3,
        text='Fecha',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=250)

caja_fecha = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_fecha.insert(0, now.date())
caja_fecha.configure(state= 'disabled')
caja_fecha.place(x=130, y=250)


#Etiquetas de la caja dirección
Label(fondo3,
        text='Dirección',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=300)

n = StringVar()
caja_direccion = ttk.Combobox(window,
                        width = 18, 
                        textvariable =n,
                        font=('Century Gothic', '12', 'bold'))

caja_direccion.configure(foreground='#4D5064')
caja_direccion['values'] = (registro2)

caja_direccion.place(x=180, y=345)


#Etiquetas de la caja precio
Label(fondo3,
        text='Precio',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=350)

caja_precio = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_precio.insert(0,user)
caja_precio.configure(state= 'disabled')
caja_precio.place(x=130, y=350)

# Etiquetas de la caja isv
Label(fondo3,
        text='ISV',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=400)

caja_isv = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_isv.insert(0, "15%")
caja_isv.configure(state= 'disabled')
caja_isv.place(x=130, y=400)


# Etiquetas de la caja total
valor = float(caja_precio.get())
isv = valor * 0.15
total =  float(caja_precio.get()) + float(isv)
Label(fondo3,
        text='Total',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=450)

caja_total = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_total.insert(0, total)
caja_total.configure(state= 'disabled')
caja_total.place(x=130, y=450)

#Botones del fondo 3
btn_registrar = Button(fondo3, 
                        text='TERMINAR COMPRA',
                        font=('Century Gothic', '12', 'bold'),
                        width=29,
                        height=2,
                        bg='#D047EB',
                        command = lambda:[insertar(), abrir_menu()])
btn_registrar.place(x=40, y=500)


window.mainloop()
