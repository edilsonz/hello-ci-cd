from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "¡Hola CI/CD con Python! 👋"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000, debug=True)