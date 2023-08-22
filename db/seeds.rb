# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "visitor@lewagon.com", password: "123456789", username: "bobby")



Pal.create(name: "Dave", location: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price: 30, user_id: 1, rating:4)
