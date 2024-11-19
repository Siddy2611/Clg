import tkinter as tk
import random
def change_color():
    color =f'#{random.randint(0, 0xFFFFFF):0 6x}'
    
    canvas.itemconfig(line, fill=color)
    canvas.itemconfig(rectangle, fill=color)
    canvas.itemconfig(oval, fill=color)
    canvas.itemconfig(arc,fill=color)

# Create the main window
root = tk.Tk()
root.title("Canvas Shapes")
root.geometry("400x300")

# Create a Canvas widget
canvas = tk.Canvas(root, bg="white")
canvas.pack(fill=tk.BOTH, expand=True)

line = canvas.create_line(50, 100, 350, 100, width=2, fill="black")
rectangle = canvas.create_rectangle(50, 150, 150, 250, outline="black", fill="blue")
oval = canvas.create_oval(200, 150, 300, 250, outline="black", fill="green")
arc=canvas.create_arc(200, 50, 500, 300,start=0,extent=150,fill="red")

change_color = tk.Button(root, text="Change Color", command=change_color)
change_color.pack(pady=10)

# Start the main loop
root.mainloop()
