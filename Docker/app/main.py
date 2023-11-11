from flask import Flask
app = Flask(__name__)

@app.route('/')
# ‘/’ URL is bound with hello_world() function.
def say_hello():
    return 'HELLO this is from Docker container'

@app.route('/name')
# ‘/’ URL is bound with hello_world() function.
def return_name():
    return 'My name is HARSHA'

if __name__ == '__main__':
	app.run(host="0.0.0.0", port="8080")

