from flask import Flask
from flask_restful import Resource, Api
import os

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):
    def get(self):
        os.system("")
        return {'hello': 'world'}

api.add_resource(HelloWorld, '/<string:filename>')

if __name__ == '__main__':
    app.run(debug=True,port=8080)