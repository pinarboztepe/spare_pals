# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

<<<<<<< HEAD
User.create(email: "visitor@lewagon.com", password: "123456789", username: "bobby")



Pal.create(name: "Dave", location: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price: 30, user_id: 1, rating:4)
=======
puts "Cleaning DB..."
Pal.destroy_all
User.destroy_all

bobby = User.create(email: "visitor@lewagon.com", password: "123456789", username: "bobby")
john = User.create(email: "johnl@lewagon.com", password: "112233445", username: "Jonh")
paul = User.create(email: "paulm@lewagon.com", password: "221133445", username: "Paul")
ringo = User.create(email: "ringos@lewagon.com", password: "332244556", username: "Ringo")
george = User.create(email: "georgeh@lewagon.com", password: "556677889", username: "George")


Pal.create(name: "Dave", location: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price: 30, user: bobby, rating: 4)
Pal.create(name: "Taylor", location: "Times Square, 42 Broadway, New York, NY 10036", price: 40, user: bobby, rating: 3)
Pal.create(name: "Josh", location: "Piazza San Marco, 1 Piazzetta San Marco, 30124 Venice, Italy", price: 50, user: john, rating: 5)
Pal.create(name: "Pat", location: "Red Square, 1 Krasnaya Ploshchad, Moscow 109012, Russia", price: 65, user: john, rating: 3)
Pal.create(name: "Chris", location: "Sydney Opera House, Bennelong Point, Sydney NSW 2000, Australia", price: 27, user: paul, rating: 2)
Pal.create(name: "Nate", location: "Shibuya Crossing, 2-1 Dogenzaka, Shibuya, Tokyo 150-0043, Japan", price: 70, user: paul, rating: 4)
Pal.create(name: "Rami", location: "The Colosseum, Piazza del Colosseo, 1, 00184 Rome, Italy", price: 89, user: ringo, rating: 1)
Pal.create(name: "William", location: "Christ the Redeemer, Corcovado Mountain, Rio de Janeiro - RJ, Brazil", price: 45, user: ringo, rating: 5)
Pal.create(name: "Franz", location: "The Great Wall of China, Badaling, Yanqing District, Beijing, China", price: 80, user: george, rating: 5)
Pal.create(name: "Krist", location: "Brandenburg Gate, Pariser Platz, 10117 Berlin, Germany", price: 57, user: george, rating: 3)


# pals.each do |pal|
#   puts "saving #{pal.name}"
#   pal.save
# end

# puts "Finished!"
>>>>>>> a4d8584e047e522b923a75289c00bff48889109b
