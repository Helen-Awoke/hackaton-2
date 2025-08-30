
from flask import Flask, render_template, request, jsonify
import sqlite3

app = Flask(__name__)

def get_recipes(ingredient):
    conn = sqlite3.connect("recipes.db")
    cursor = conn.cursor()
    cursor.execute(
        "SELECT name, ingredients, calories, image_url FROM recipes WHERE ingredients LIKE ?",
        ('%' + ingredient + '%',)
    )
    results = cursor.fetchall()
    conn.close()
    return [
        {"name": row[0], "ingredients": row[1], "calories": row[2], "image_url": row[3]}
        for row in results
    ]

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/recipe", methods=["POST"])
def recipe():
    ingredient = request.form.get("ingredient", "")
    results = get_recipes(ingredient)
    if results:
        return jsonify(results)
    return jsonify({"error": "No recipes found"})

# Dummy payment endpoint for Donate button
@app.route("/donate", methods=["POST"])
def donate():
    data = request.get_json()
    email = data.get("email")
    amount = data.get("amount")
    if email and amount:
        return jsonify({"message": f"Thank you {email}! You donated ${amount}"})
    return jsonify({"message": "Error: Invalid input"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=81, debug=True)
