for i in [1..100]
  db.c.insert x: i

cursor = db.c.find()
while cursor.hasNext()
  obj = cursor.next()
  print obj.x

cursor = db.c.find()
cursor.forEach (obj)->
  print obj.x

db.c.find().limit 3
db.c.find().skip 3
db.c.find().skip(3).limit 3
db.c.find().skip(3).limit(3).sort x: -1