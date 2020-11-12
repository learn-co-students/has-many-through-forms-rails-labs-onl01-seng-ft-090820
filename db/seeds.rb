# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



post1 = Post.create(title: "Hello World", content: "asd;flkajsd;flkjasdf")
post2 = Post.create(title: "Hello World", content: "asd;flkajsd;flkjasdf")


user1 = User.create(username: "Bob", email: "bob@bob.com")
user2 = User.create(username: "Jessica", email: "jessica@jessica.com")


comment1 = Comment.create(content: "Hey, congrats!", user_id: user1.id, post_id: post1.id)
comment2 = Comment.create(content: "OMGSH, That's AWESOME!", user_id: user2.id, post_id: post2.id)
