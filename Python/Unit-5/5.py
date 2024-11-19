import tkinter as tk

def check():
	n=int(entry.get())
	if n%2==0:
		result.config(text="Number Even")
	else:
		result.config(text="Number Odd")

root=tk.Tk()
root.title("Odd or Even Checker")
root.geometry("300x200")

label=tk.Label(root,text="Enter number: ")
label.pack()

entry=tk.Entry(root)
entry.pack()

button=tk.Button(root,text="Check",command=check)
button.pack()

result=tk.Label(root,text="")
result.pack()

root.mainloop()