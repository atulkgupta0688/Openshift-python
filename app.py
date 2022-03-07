from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello, World!'
if __name__ == '__main__':  # Script executed directly?
    print("Hello World! Built with a Docker file.")
    app.run(host='0.0.0.0', port =5000 , debug = True)
