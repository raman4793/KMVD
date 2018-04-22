# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'admin@gmail.com', password: '123456', password_confirmation: '123456')

Fine.create(reason: 'No Helmet', amt: 500)
Fine.create(reason: 'No License', amt: 1000)
Fine.create(reason: 'No RC', amt: 1500)
Fine.create(reason: 'Drunk Driving', amt: 500)