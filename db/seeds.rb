# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB (don't freak out)..."
Booking.destroy_all
Pal.destroy_all
User.destroy_all

bobby = User.create(email: "visitor@lewagon.com", password: "123456789", username: "bobby")
john = User.create(email: "johnl@lewagon.com", password: "112233445", username: "Jonh")
paul = User.create(email: "paulm@lewagon.com", password: "221133445", username: "Paul")
ringo = User.create(email: "ringos@lewagon.com", password: "332244556", username: "Ringo")
george = User.create(email: "georgeh@lewagon.com", password: "556677889", username: "George")

Pal.create(name: "Dave", location: "Hoxton, London", price: 30, user: bobby, rating: 4)
Pal.create(name: "Taylor", location: "Camden, London", price: 40, user: bobby, rating: 3)
Pal.create(name: "Josh", location: "Battersea, London", price: 50, user: john, rating: 5)
Pal.create(name: "Pat", location: "Peckham, London", price: 65, user: john, rating: 3)
Pal.create(name: "Chris", location: "Greenwich, London", price: 27, user: paul, rating: 2)
Pal.create(name: "Nate", location: "Westminster, London", price: 70, user: paul, rating: 4)
Pal.create(name: "Rami", location: "Hammersmith, London", price: 89, user: ringo, rating: 1)
Pal.create(name: "William", location: "Richmond, London", price: 45, user: ringo, rating: 5)
Pal.create(name: "Franz", location: "Morden, London", price: 80, user: george, rating: 5)
Pal.create(name: "Krist", location: "Walthamstow, London", price: 57, user: george, rating: 3)

puts "DB filled with #{User.count} users, and #{Pal.count} pals."
# pals.each do |pal|
#   puts "saving #{pal.name}"
#   pal.save
# end

# puts "Finished!"
