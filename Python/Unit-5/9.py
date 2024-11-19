import tkinter as tk

root = tk.Tk()
root.title("Listbox with Scrollbar")
root.geometry("300x200")

lbox=tk.Listbox(root)
lbox.pack(side=tk.LEFT,fill=tk.BOTH,expand=True)

scrollbar=tk.Scrollbar(root,command=lbox.yview)
scrollbar.pack(side=tk.RIGHT,fill=tk.Y)

lbox.config(yscrollcommand=scrollbar.set)

subjects=["Maths","SS","ACO","DCN","Python", "Chemistry",
    "Biology",
    "History",
    "Geography",
    "English Literature",
    "Computer Science",
    "Psychology",
    "Art",
    "Music",
    "Physical Education",
    "Sociology",
    "Political Science",
    "Philosophy"]

for sub in subjects:
	lbox.insert(tk.END,sub)

root.mainloop()
