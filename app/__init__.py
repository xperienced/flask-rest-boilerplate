import flask
import flask.ext.sqlalchemy
import flask.ext.restless

# Create the Flask application and the Flask-SQLAlchemy object.
app = flask.Flask(__name__)
app.config.from_object('config.development')

db = flask.ext.sqlalchemy.SQLAlchemy(app)

import endpoints