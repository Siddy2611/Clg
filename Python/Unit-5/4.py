import tkinter as tk

def sel():
    selected_value = var.get()

    if selected_value == 1:
        candidate_name = "BJP"
    elif selected_value == 2:
        candidate_name = "Congress"
    elif selected_value == 3:
        candidate_name = "Aam Aadmi"

    selection = "You voted for: " + candidate_name
    label.config(text=selection)

root = tk.Tk()
root.title("Voting System")
root.geometry("300x300")

var = tk.IntVar()

Button1 = tk.Radiobutton(root, text="BJP", variable=var, value=1, command=sel)
Button1.pack()

Button2 = tk.Radiobutton(root, text="Congress", variable=var, value=2, command=sel)
Button2.pack()

Button3 = tk.Radiobutton(root, text="Aam Aadmi", variable=var, value=3, command=sel)
Button3.pack()

label = tk.Label(root)
label.pack(pady=20)

root.mainloop()
