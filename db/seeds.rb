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

dave = Pal.new(name: "Dave", location: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price: 30, user: bobby, rating: 4)
file = URI.open("https://sharpfocusphoto.com/wp-content/uploads/2020/08/DSC_0275.jpg")
dave.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
dave.save!

taylor = Pal.new(name: "Taylor", location: "Times Square, 42 Broadway, New York, NY 10036", price: 40, user: bobby, rating: 3)
file = URI.open("https://ukclippingpath.com/wp-content/uploads/2021/10/Slight-Angling.jpg")
taylor.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
taylor.save!

josh = Pal.new(name: "Josh", location: "Piazza San Marco, 1 Piazzetta San Marco, 30124 Venice, Italy", price: 50, user: john, rating: 5)
file = URI.open("https://johngress.com/wp-content/uploads//2022/07/examples_of_actors_headshots_in_Chicago-3.jpg")
josh.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
josh.save!

pat = Pal.new(name: "Pat", location: "Red Square, 1 Krasnaya Ploshchad, Moscow 109012, Russia", price: 65, user: john, rating: 3)
file = URI.open("https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_452,h_398/https://www.letseatgrandma.com/wp-content/uploads/2018/10/linkedin-headshot-example-1.jpg")
pat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pat.save!

chris = Pal.new(name: "Chris", location: "Sydney Opera House, Bennelong Point, Sydney NSW 2000, Australia", price: 27, user: paul, rating: 2)
file = URI.open("https://i.pinimg.com/736x/38/93/07/389307d6af5c4be0051b7d3c4f93bf3d.jpg")
chris.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chris.save!

nate = Pal.new(name: "Nate", location: "Shibuya Crossing, 2-1 Dogenzaka, Shibuya, Tokyo 150-0043, Japan", price: 70, user: paul, rating: 4)
file = URI.open("https://res.cloudinary.com/spotlightuk/image/fetch/w_800,c_limit/https://spotlight-cmsmedia.s3-eu-west-1.amazonaws.com/media/1455/rory-airbrush.jpg")
nate.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
nate.save!

rami = Pal.new(name: "Rami", location: "The Colosseum, Piazza del Colosseo, 1, 00184 Rome, Italy", price: 89, user: ringo, rating: 1)
file = URI.open("https://ukclippingpath.com/wp-content/uploads/2021/10/Arm-Crossed.jpg")
rami.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
rami.save!

william = Pal.new(name: "William", location: "Christ the Redeemer, Corcovado Mountain, Rio de Janeiro - RJ, Brazil", price: 45, user: ringo, rating: 5)
file = URI.open("https://img.fixthephoto.com/blog/images/gallery/news_preview_mob_image__preview_967.jpg")
william.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
william.save!

arabella = Pal.new(name: "Arabella", location: "The Great Wall of China, Badaling, Yanqing District, Beijing, China", price: 80, user: george, rating: 5)
file = URI.open("https://eddie-hernandez.com/wp-content/uploads/2019/09/indoor-atrium-casual-corporate-business-headshots-bay-area-1227.jpg")
arabella.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
arabella.save!

mary = Pal.new(name: "Mary", location: "Brandenburg Gate, Pariser Platz, 10117 Berlin, Germany", price: 57, user: george, rating: 3)
file = URI.open("https://marvel-b1-cdn.bc0a.com/f00000000260899/www.heidrick.com/-/media/heidrickcom/images/consultants/m/macdonald_mary_18553/macdonald_mary_860x860.jpg")
mary.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mary.save!

puts "DB filled with #{User.count} users, and #{Pal.count} pals."
# pals.each do |pal|
#   puts "saving #{pal.name}"
#   pal.save
# end

# puts "Finished!"
