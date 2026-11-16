from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    container_id = os.environ.get('HOSTNAME', 'inconnu')
    return f"Réponse du conteneur : {container_id}\n"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
