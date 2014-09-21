db.c.count()
db.c.count
  x:
    $in: [3, 8, 9]

db.people.insert [
  name: 'Ada'
  age: 20
,
  name: 'Fred'
  age: 35
,
  name: 'Susan'
  age: 60
,
  name: 'Andy'
  age: 35
]
db.people.find()

db.runCommand
  distinct: 'people'
  key: 'age'