for i in [1..1000000]
  db.foo.insert
    foo: 'bar'
    baz: i
    z: 10 - i

start = (new Date).getTime()
db.foo.remove()
db.foo.findOne()
end = (new Date).getTime()
end - start

db.foo.drop()