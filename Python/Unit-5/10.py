import tkinter as tk

root = tk.Tk()
root.title("Text Widget with Scrollbar")
root.geometry("400x300")

text_widget = tk.Text(root)
text_widget.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

scrollbar = tk.Scrollbar(root, command=text_widget.yview)
scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

text_widget.config(yscrollcommand=scrollbar.set)

for i in range(50):
    text_widget.insert(tk.END, f"This is line {i + 1}\n")

root.mainloop()
