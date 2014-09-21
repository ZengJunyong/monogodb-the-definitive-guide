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
  age:
    $gte: 18
    $lte: 30
db.users.find
  birthday:
    $lt: new Date '01/01/1970'
db.users.find
  age:
    $ne: 8

db.users.find
  age:
    $in: [8, 11, 33, 99]
db.users.find
  age:
    $nin: [8, 11, 33, 99]
db.users.find
  $or: [
    age:
      $in: [8, 13, 14]
  ,
    name: 'yong45'
  ]