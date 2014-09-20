db.user.insert
  name: 'joe'
  friends: 32
  enemies: 2
db.user.findOne()

joe = db.user.findOne {name: 'joe'}
{_id,name,friends,enemies} = joe
joe.relationships = {friends, enemies}
delete joe.name
delete joe.friends
delete joe.enemies
db.user.update {name: 'joe'}, joe
db.user.findOne()

db.analytics.insert
  url: 'zengjy.info'
  pageviews: 52
db.analytics.find()
db.analytics.update url: 'zengjy.info',
  $inc:
    pageviews: 1
db.analytics.find()

db.user.update {_id},
  $set:
    'favorite book': 'war and peace'
db.user.findOne();
db.user.update {_id},
  $set:
    'favorite book': ['war and peace', 'green eggs and ham']
db.user.findOne();
db.user.update {_id},
  $unset:
    'favorite book': 1
db.user.findOne();

db.blog.drop()
db.blog.insert
  title: 'A blog post'
  content: '......'
  author:
    name: 'yong'
    email: 'zengjunyong@gmail.com'
db.blog.findOne()
db.blog.update 'author.name': 'yong',
  $set:
    'author.name': 'junyong'
db.blog.findOne()

game =
  game: 'pinball'
  user: 'yong'
db.games.insert game
db.games.findOne()
db.games.update game,
  $inc:
    score: 50
db.games.findOne()
db.games.update game,
  $inc:
    score: 1000
db.games.findOne()

db.blog.update {title: 'A blog post'},
  $push:
    comments:
      name: 'jie'
      content: 'nice post!'
db.blog.findOne()

possibleBlog = db.analytics.findOne url: '/blog'
if possibleBlog
  possibleBlog.pageviews++
  db.analytics.save possibleBlog
else
  db.analytics.save
    url: '/blog'
    pageviews: 1
db.analytics.find()

db.analytics.update url: '/blog',
  $inc:
    pageviews: 1
  true
db.analytics.find()

db.math.remove()
db.math.update count: 25,
  $inc:
    count: 3
, true
db.math.findOne()

x =
  num: 42
db.foo.save x

for i in [1..5]
  db.user.insert
    birthday: '10/18/1985'
    name: 'user ' + i
db.user.find()

db.user.update
  birthday: '10/18/1985'
, $set:
  gift: 'happy birthday'

db.user.update
  birthday: '10/18/1985'
, $set:
  gift: 'happy birthday !~'
, false, true

db.runCommand getLastError: 1

db.foo.insert
  '_id': 123
  x: 1
db.foo.insert
  '_id': 123
  x: 2