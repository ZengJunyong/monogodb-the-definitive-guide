post =
  title: 'My blog post'
  content: 'Here is my blog post.'
  date: new Date

db.blog.insert post

db.blog.find()

db.blog.findOne()

insertPosts = ->
  for i in [1..5]
    post =
      title: 'My blog post' + i
      content: 'Here is my blog post ' + i
      date: new Date
    db.blog.insert post

insertPosts()

post.comments = []
db.blog.update {title: 'My blog post'}, post

db.blog.remove {title: 'My blog post5'}