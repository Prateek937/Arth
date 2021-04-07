from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask("iiecapp")
#locating the DB
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///mydb/data.sqlite'

#ORM
db = SQLAlchemy(app)
print(db)

class IIEC(db.Model):
    i = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    age = db.Column(db.Integer)
    remarks = db.Column(db.Text)

    def __init__(self, i, name, age, remarks):
        self.id = i
        self.name = name
        self.age = age
        self.remarks = remarks

#create database
db.create_all()

jack = IIEC(1, 'jack', 23, 'ok')

#adding the object to the database
db.session.add(jack)

# committing finally 
db.session.commit()

'''
#Read 2nd row
r2 = IIEC.query.get(2)
print(r2.name, r2.age)

# Read all the rows
rall = IIEC.query.all()
#print name column of zeroth row
print(rall[0].name)

#applying filter of age=10
rage = IIEC.query.filter_by(age=10)
print(rage.all())

#update age of 1st row 
r1 = IIEC.query.get(1)
r1.age = 20
db.session.add(r1.age)
db.session.commit()

#delete 2nd row
ralle = IIEC.query.get(2)
db.session.delete(rallr)
'''
