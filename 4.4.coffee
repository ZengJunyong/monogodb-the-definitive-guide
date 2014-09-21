db.foo.insert
  apple: 1
  banana: 6
  peach: 3
db.foo.insert
  apple: 8
  spinach: 4
  watermelon: 4

db.foo.find()
db.foo.find '$where': ->
  for current of @
    for other of @
      return true if current != other and @[current] == @[other]