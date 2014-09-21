insertUsers = ->
  db.users.drop()
  for i in [5..60]
    birthday = new Date '01/01/' + (2014 - i)
    db.users.insert {
      name: 'yong' + i
      birthday
      age: i
    }
insertUsers()

db.users.find
  name: /yong2/i

db.food.insert fruit: ['apple', 'banana', 'peach']
db.food.find fruit: 'banana'

db.food.insert fruit: ['apple', 'kumquat', 'orange']
db.food.insert fruit: ['cherry', 'banana', 'apple']

db.food.find fruit:
  $all: ['apple', 'banana']

db.food.find 'fruit.2': 'peach'
db.food.find fruit:
  $size: 3