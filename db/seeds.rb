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

# <<<<<<< HEAD
# Pal.create(name: "Dave", location: "Hoxton, London", price: 30, user: bobby, rating: 4)
# Pal.create(name: "Taylor", location: "Camden, London", price: 40, user: bobby, rating: 3)
# Pal.create(name: "Josh", location: "Battersea, London", price: 50, user: john, rating: 5)
# Pal.create(name: "Pat", location: "Peckham, London", price: 65, user: john, rating: 3)
# Pal.create(name: "Chris", location: "Greenwich, London", price: 27, user: paul, rating: 2)
# Pal.create(name: "Nate", location: "Westminster, London", price: 70, user: paul, rating: 4)
# Pal.create(name: "Rami", location: "Hammersmith, London", price: 89, user: ringo, rating: 1)
# Pal.create(name: "William", location: "Richmond, London", price: 45, user: ringo, rating: 5)
# Pal.create(name: "Franz", location: "Morden, London", price: 80, user: george, rating: 5)
# Pal.create(name: "Krist", location: "Walthamstow, London", price: 57, user: george, rating: 3)
# =======
# dave = Pal.new(name: "Dave", location: "Hoxton, London", price: 30, user: bobby, rating: 4)
# file = URI.open("https://sharpfocusphoto.com/wp-content/uploads/2020/08/DSC_0275.jpg")
# dave.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# dave.save!

taylor = Pal.new(
  name: "Taylor",
  location: "Kirkwall, United Kingdom",
  price: 40,
  user: bobby,
  rating: 3,
  emoji: "🍾",
  job: "raver",
  intro: "I'm Taylor, and I find bliss in writing, horseback riding. Life's a beautiful symphony of passions.",
  word: "skank"
)
file = URI.open("https://ukclippingpath.com/wp-content/uploads/2021/10/Slight-Angling.jpg")
taylor.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
taylor.save!

josh = Pal.new(
  name: "Josh",
  location: "Battersea, London",
  price: 50,
  user: john,
  rating: 5,
  emoji: "🛺",
  job: "radio",
  intro: "Hi, I'm Josh. I'm a traveler, a tech geek, and a foodie at heart. Adventures await at every corner.",
  word: "noisy"
)
file = URI.open("https://johngress.com/wp-content/uploads//2022/07/examples_of_actors_headshots_in_Chicago-3.jpg")
josh.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
josh.save!

pat = Pal.new(
  name: "Pat",
  location: "Peckham, London",
  price: 65,
  user: john,
  rating: 3,
  emoji: "🎲",
  job: "spy",
  intro: "I'm Pat, and I enjoy painting, baking, and practicing mindfulness. Life's artistry lies in little moments.",
  word: "inconspicuous"
)
file = URI.open("https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_452,h_398/https://www.letseatgrandma.com/wp-content/uploads/2018/10/linkedin-headshot-example-1.jpg")
pat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pat.save!

chris = Pal.new(
  name: "Chris",
  location: "Greenwich, London",
  price: 27,
  user: paul,
  rating: 2,
  emoji: "💊",
  job: "genius",
  intro: "I'm Chris, and I'm into astronomy, and collecting vintage records. Exploring the world, one hobby at a time.",
  word: "stubborn"
)
file = URI.open("https://i.pinimg.com/736x/38/93/07/389307d6af5c4be0051b7d3c4f93bf3d.jpg")
chris.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chris.save!

nate = Pal.new(
  name: "Nate",
  location: "Westminster, London",
  price: 70,
  user: paul,
  rating: 4,
  emoji: "🧸",
  job: "compost",
  intro: "Hey, I'm Nate. I adore dancing, gardening, and film photography. Every passion adds a layer to my life.",
  word: "fragile"
)
file = URI.open("https://res.cloudinary.com/spotlightuk/image/fetch/w_800,c_limit/https://spotlight-cmsmedia.s3-eu-west-1.amazonaws.com/media/1455/rory-airbrush.jpg")
nate.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
nate.save!

rami = Pal.new(
  name: "Rami",
  location: "Hammersmith, London",
  price: 89,
  user: ringo,
  rating: 1,
  emoji: "💰",
  job: "rich guy",
  intro: "I'm Rami, and I thrive on sports, stargazing, and volunteering. Life is about making meaningful connections.",
  word: "money"
)
file = URI.open("https://ukclippingpath.com/wp-content/uploads/2021/10/Arm-Crossed.jpg")
rami.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
rami.save!

william = Pal.new(
  name: "William",
  location: "Richmond, London",
  price: 45,
  user: ringo,
  rating: 5,
  emoji: "💃",
  job: "mafia boss",
  intro: "I'm William, and I'm all about books, yoga, and photography. Every day is a new chapter in my adventure.",
  word: "boss"
)
file = URI.open("https://img.fixthephoto.com/blog/images/gallery/news_preview_mob_image__preview_967.jpg")
william.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
william.save!

arabella = Pal.new(
  name: "Arabella",
  location: "Morden, London",
  price: 80,
  user: george,
  rating: 5,
  emoji: "🤫",
  job: "burglar",
  intro: "Hi, I'm Arabella. My interests range from coding to board games. Variety is the spice of life!",
  word: "thug"
)
file = URI.open("https://eddie-hernandez.com/wp-content/uploads/2019/09/indoor-atrium-casual-corporate-business-headshots-bay-area-1227.jpg")
arabella.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
arabella.save!

mary = Pal.new(
  name: "Mary",
  location: "Walthamstow, London",
  price: 57,
  user: george,
  rating: 3,
  emoji: "👨‍🌾",
  job: "zookeeper",
  intro: "Hey there, I'm Mary. I find joy in painting and coffee brewing. Each day is a canvas of opportunities.",
  word: "animal"
)
file = URI.open("https://marvel-b1-cdn.bc0a.com/f00000000260899/www.heidrick.com/-/media/heidrickcom/images/consultants/m/macdonald_mary_18553/macdonald_mary_860x860.jpg")
mary.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mary.save!

moana = Pal.new(
  name: "Moana",
  location: "Catford, London",
  price: 800,
  user: george,
  rating: 4,
  emoji: "🤡",
  job: "tax man",
  intro: "Hello, I'm Moana. I'm a music lover, and a DIY hobbyist. Life is all about exploring passions?",
  word: "basic"
)
file = URI.open("https://marvel-b1-cdn.bc0a.com/f00000000260899/www.heidrick.com/-/media/heidrickcom/images/consultants/m/macdonald_mary_18553/macdonald_mary_860x860.jpg")
moana.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
moana.save!

puts "DB filled with #{User.count} users, and #{Pal.count} pals."
# pals.each do |pal|
#   puts "saving #{pal.name}"
#   pal.save
# end

# puts "Finished!"
