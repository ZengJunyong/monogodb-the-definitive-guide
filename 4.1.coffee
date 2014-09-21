insertPosts = ->
  db.blog.drop()
  for i in [1..5]
    db.blog.insert
      title: 'My blog post' + i
      content: 'Here is my blog post ' + i
      date: new Date
      author: 'yong' + i
insertPosts()

db.blog.find author: 'yong3'
db.blog.find
  author: 'yong3'
  title: 'My blog post'

db.blog.find author: 'yong3',
  title: 1
  content: 1
db.blog.find author: 'yong3',
  date: 0