import tkinter as tk
from tkinter import messagebox

def new_file():
    messagebox.showinfo("New File", "New file created.")

def open_file():
    messagebox.showinfo("Open File", "File opened.")

def show_help():
    messagebox.showinfo("Help", "This is the help information.")

root = tk.Tk()
root.title("Menu Example")
root.geometry("400x300")

menu=tk.Menu(root)

file_menu=tk.Menu(menu)
file_menu.add_command(label='New',command=new_file)
file_menu.add_command(label='Open',command=open_file)
menu.add_cascade(label="file",menu=file_menu)
menu.add_command(label='Help',command=show_help)

root.config(menu=menu)

root.mainloop()

