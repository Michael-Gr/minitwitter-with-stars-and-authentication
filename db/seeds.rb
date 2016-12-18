# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gavin = User.create(email: 'gavin@example.com', password: '123456')
jason = User.create(email: 'jason@example.com', password: '123456')
mark = User.create(email: 'mark@example.com', password: '123456')
holly = User.create(email: 'holly@example.com', password: '123456')

tweets = Tweet.create(
  [
    { user: gavin, text: 'Tweet 1' },
    { user: jason, text: 'Tweet 2' },
    { user: mark, text: 'Tweet 3' },
    { user: holly, text: 'Tweet 4' }
  ]
)
