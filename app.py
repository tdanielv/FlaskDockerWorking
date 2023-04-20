
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/main/')
def hello_world2():
    return 'Moe Flask приложение в контейнере Docker.'

@app.route('/')
def hello_world():
    return render_template('index.html')

if __name__ == '__main__':
    app.run()
