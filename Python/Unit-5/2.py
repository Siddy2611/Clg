import tkinter as tk

def show():
	label.config(text="Hello")

def change():
	label.config(text="Changed")

def exit():
	root.destroy()

root=tk.Tk()
root.title("Button App")
root.geometry("400x400")

label=tk.Label(root,text="Press button")
label.pack(pady=20)

button=tk.Button(root,text="Show message",command=show)
button.pack(pady=5)

button=tk.Button(root,text="Change text",command=change)
button.pack(pady=5)

button=tk.Button(root,text="Exit",command=exit)
button.pack(pady=5)

root.mainloop() 