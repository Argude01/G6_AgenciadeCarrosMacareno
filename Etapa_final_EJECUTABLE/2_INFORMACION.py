#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
from PIL import ImageTk, Image
import os


window = Tk()

#titulo  de la pantalla
window.title('Información de la empresa')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

# Funciones 
def open():
    window.destroy()
    os.system("1_PRINCIPAL.py")


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

Label(fondo3,
        text='INFORMACION DE NUESTRA\nAGENCIA DE AUTOS',
        bg='#f0f0f0',
        font=('Century Gothic', '14', 'bold')).place(x=45, y=10)

image = Image.open('logo-macareno.png')
image = image.resize((150, 100), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=90, y=75)



#Etiquetas de la caja modelo
Label (fondo3,
       text="Lo que nos impulsa a avanzar",
       bg='#f0f0f0',
       font=('Century Gothic', '12', 'bold')).place(x=55, y=190)
       
Label(fondo3,
        text="Desde su fundación, ha estado utilizando sus principios rectores para producir vehículos confiables y el desarrollo sostenible de la sociedad mediante el empleo de productos y servicios innovadores y de alta calidad.",
        wraplength=250,
        bg='#f0f0f0',
        font=('Century Gothic', '9', 'bold')).place(x=52, y=220)

#Etiquetas de la caja año
Label(fondo3,
        text='Misión',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=140, y=325)

Label(fondo3,
        text='Somos una empresa líder en la industria automotriz, ofrecemos productos y servicios de calidad y excelencia. Plenamente respaldados con avanzada tecnología, procesos de mejora continua, un recurso humano altamente calificado y con un alto sentido de responsabilidad social',
        wraplength=250,
        bg='#f0f0f0',
        font=('Century Gothic', '9', 'bold')).place(x=52, y=350)




#Etiquetas de la caja color
Label(fondo3,
        text='Visión',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=140, y=490)

Label(fondo3,
        text='Que nuestros productos y servicios sean la principal solución de transporte de las familias y las empresas en Honduras',
        wraplength=250,
        bg='#f0f0f0',
        font=('Century Gothic', '9', 'bold')).place(x=50, y=520)

#Boton de atras

bonton = Button(window,
                text='🢀',
                width=8,
                height=2,
                fg="#ffffff",
                bg='#269DF5',
                font=('Century Gothic', '9', 'bold'),
                command = open)
bonton.place(x=0, y=0)



window.mainloop()
