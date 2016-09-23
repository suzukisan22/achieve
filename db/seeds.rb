# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |n|
  title = Faker::Book.title
  content = Faker::Hacker.say_something_smart
  user_id = n
  Blog.create!(title: title,
               content: content,
               user_id: user_id
               )
end
