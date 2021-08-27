#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
import usuario_database
from PIL import ImageTk, Image
import os

window = Tk()



#titulo  de la pantalla
window.title('Registro de autos')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

correo = StringVar()
clave = StringVar()
años = StringVar()

# Funciones de los botones
def crear_sala():
    correo = caja_correo.get()
    clave = caja_clave.get()
    año = caja_años.get()
    demo_db = usuario_database.MyDatabase()
    demo_db.insert_db(correo, clave, año)

def open_cliente():
    window.destroy()
    os.system("4_CLIENTE.py")


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


#Label del fondo 3
Label(fondo3,
        text='Registro de Usuario',
        bg='#f0f0f0',
        font=('Century Gothic', '16', 'bold')).place(x=80, y=10)


#lOGO

image = Image.open('logo-macareno.png')
image = image.resize((200, 130), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=70, y=90)


#Etiquetas de la caja color
Label(fondo3,
        text='CORREO',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=280)

caja_correo = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_correo.place(x=120, y=280)

#Etiquetas de la caja año
Label(fondo3,
        text='CLAVE',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=340)

caja_clave = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    show="*",
                    font=('Century Gothic', '12', 'bold'))
caja_clave.place(x=120, y=340)

#Etiquetas de la caja cliente
Label(fondo3,
        text='EDAD',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=400)

caja_años = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_años.place(x=120, y=400)

#Botones del fondo 3

btn_registrar = Button(fondo3, 
                        text='REGISTRAR',
                        font=('Century Gothic', '12', 'bold'),
                        width=29,
                        height=2,
                        bg='#D047EB',
                        command = lambda:[crear_sala(), open_cliente()])
btn_registrar.place(x=40, y=500)


window.mainloop()
