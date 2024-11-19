import tkinter as tk

count=0
def counter():
	global count
	count+=1
	count_label.config(text=f"Button clicked: {count} times")

root = tk.Tk()
root.title("Button Click Counter")
root.geometry("300x200")

button=tk.Button(root,text="Click",command=counter)
button.pack()

count_label=tk.Label(root,text="Button clicked 0 Times")
count_label.pack()

root.mainloop()