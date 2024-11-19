import tkinter as tk

def print_s():
    selected_options = []
    if Cb1.get() == 1:
        selected_options.append("Shoes")
    if Cb2.get() == 1:  # Corrected condition from 2 to 1
        selected_options.append("T-Shirts")
    if Cb3.get() == 1:  # Corrected condition from 3 to 1
        selected_options.append("Shirts")
    
    if selected_options:
        result_label.config(text="Selected Items:"+", ".join(selected_options))
    else:
        result_label.config(text="No options selected.")

root = tk.Tk()
root.title("Welcome")
root.geometry("400x400")

Cb1 = tk.IntVar()
Cb2 = tk.IntVar()
Cb3 = tk.IntVar()

Button1 = tk.Checkbutton(root, text="Shoes", variable=Cb1)
Button1.pack()

Button2 = tk.Checkbutton(root, text="T-Shirts", variable=Cb2)
Button2.pack()

Button3 = tk.Checkbutton(root, text="Shirts", variable=Cb3)
Button3.pack()

But = tk.Button(root, text="Enter", command=print_s)
But.pack()

result_label = tk.Label(root, text="")
result_label.pack(pady=20)

root.mainloop()
