import tkinter as tk
from tkinter import messagebox
import mysql.connector

def login():
    username = entry_username.get()
    password = entry_password.get()
    
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='Priya++12',
            database='python'
        )
        
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM login WHERE uname=%s AND password=%s", (username, password))
        
        result = cursor.fetchone()
        
        if result:
            messagebox.showinfo("Login", "Login Successful!")
        else:
            messagebox.showerror("Login", "Invalid username or password")
    
    except mysql.connector.Error as err:
        messagebox.showerror("Database Error", str(err))
    
    finally:
        if connection.is_connected():
            connection.close()

# Tkinter GUI setup
root = tk.Tk()
root.title("Log in Application")
root.geometry("300x300")

# Username Label and Entry
label_username = tk.Label(root, text="Username")
label_username.pack(pady=5)
entry_username = tk.Entry(root)
entry_username.pack(pady=5)

# Password Label and Entry
label_password = tk.Label(root, text="Password")
label_password.pack(pady=5)
entry_password = tk.Entry(root, show='*')
entry_password.pack(pady=5)

# Login Button
button_login = tk.Button(root, text="Login", command=login)
button_login.pack()

# Start the Tkinter main loop
root.mainloop()