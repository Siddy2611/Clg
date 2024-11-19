import tkinter as tk
from tkinter import messagebox

def showinfo():
	messagebox.showinfo("THis is info message")

def warning():
	messagebox.showwarning("This is warning")

def error():
	messagebox.showerror("This is error")

def question():
	messagebox.askquestion("Want to continue")

root = tk.Tk()
root.title("Message Box Example")
root.geometry("300x200")

info=tk.Button(root,text="SHow info",command=showinfo)
info.pack()

warning=tk.Button(root,text='SHow warning',command=warning)
warning.pack()

error=tk.Button(root,text="Show error",command=error)
error.pack()

question=tk.Button(root,text="SHow question",command=question)
question.pack()

root.mainloop()