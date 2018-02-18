from bottle import run, route, template, static_file, error
import requests

response = requests.get('http://apis.is/concerts')

data = response.json()

@route('/')
def index():
    return template('index', data=data)

#static file route
@route('/static/<filename>')
def static_server(filename):
    return static_file(filename, root=('./static_files'))

@error(500)
def error500(error):
    return '<h1>Error 500. Villa á miðlara</h1>'

@error(404)
def error404(error):
    return '<h1>Error 404. síða fannst ekki :(</h1>'

run()