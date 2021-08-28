#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
from PIL import ImageTk, Image
import os

window = Tk()

#titulo  de la pantalla
window.title('Agencia de autos Macareno')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')
window.resizable(False,False)

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

# Funciones 
def opne_window():
    window.destroy()
    os.system("3_USUARIO.py")

def open_info():
    window.destroy()
    os.system("2_INFORMACION.py")

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
        text='Bienvenidos a\n"Agencia de autos Macareno"',
        bg='#f0f0f0',
        font=('Century Gothic', '14', 'bold')).place(x=32, y=65)

#lOGO

image = Image.open('logo-macareno.png')
image = image.resize((180, 120), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=80, y=135)

# Botones de la pantallas

btn_info = Button(fondo3,
                  text="INFORMACION",
                  bg='#D297DE',
                  fg='#FFFFFF',
                  width=28,
                  height=2,
                  font=('Century Gothic', '12', 'bold'),
                  command = open_info)
btn_info.place(x=43, y=320)



btn_compra = Button(fondo3,
                  text="REGISTRO DE COMPRA",
                  bg='#D297DE',
                  fg='#FFFFFF',
                  width=28,
                  height=2,
                  command = opne_window,
                  font=('Century Gothic', '12', 'bold'))
btn_compra.place(x=43, y=400)


window.mainloop()
