from app import app, db

# Create the database tables.
db.create_all()

# start the flask loop
app.run()