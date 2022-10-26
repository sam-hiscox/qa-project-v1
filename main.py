from venv import create
from website import create_app
from flask_sqlalchemy import SQLAlchemy

app = create_app()

db = SQLAlchemy(app)

def create_database(app):
        db.create_all(app=app)
        print('Created DB')

if __name__ == '__main__':
    app.run(debug = True, host='0.0.0.0')
    create_database(app)
