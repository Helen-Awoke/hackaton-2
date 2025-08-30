
import sqlite3

# Connect or create database
conn = sqlite3.connect("recipes.db")
cursor = conn.cursor()

# Run init.sql
with open("init.sql", "r") as f:
    cursor.executescript(f.read())

conn.commit()
conn.close()

print("✅ recipes.db created and populated!")
