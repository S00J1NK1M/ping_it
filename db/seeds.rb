# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

PingpongTable.destroy_all

user1 = User.new({
  email: "soojin@kim.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "PingPongQueen",
  address: "kimstr. 1",
  score: nil
})

user1.save!

user2 = User.new({
  email: "matteo@florio.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "PingPongKing",
  address: "floriostr. 1",
  score: nil
})

user2.save!

user3 = User.new({
  email: "anna@boiko.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "AnnaBanana",
  address: "annastr. 1",
  score: nil
})

user3.save!

user4 = User.new({
  email: "erica@sunza.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "EricInYourFace",
  address: "ericstr. 1",
  score: nil
})

user4.save!


p "Created users"

# urls = ["https://images.unsplash.com/photo-1519871195344-9d1a2379cea0?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBpbmclMjBwb25nJTIwdGFibGV8ZW58MHx8MHx8fDA%3D", "https://images.unsplash.com/photo-1615177981645-51107b202210?auto=format&fit=crop&q=80&w=2827&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]

# file = URI.open()
# LeWagon_Pingpong_Table = PingpongTable.new(name: "LeWagon Pingpong Table", address: "Kochstraße 12, 10969 Berlin", description: "Challenge a LeWagon student to see if they are good enough :D", category: "outdoor", availability: true)
# LeWagon_Pingpong_Table.photo.attach(io: file, filename: "ping.jpg", content_type: "image/jpg")
# LeWagon_Pingpong_Table.save

  ping_pong_table_one = PingpongTable.new({
    name: "LeWagon Pingpong Table",
    address: "Kochstraße 12, 10969 Berlin",
    description: "Challenge a LeWagon student to see if they are good enough :D",
    category: "Outdoor",
    availability: true
  })

  file = URI.open("https://images.unsplash.com/photo-1593442808948-b1df0a8f8047?auto=format&fit=crop&q=80&w=2906&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
  ping_pong_table_one.photo.attach(io: file, filename: "ping.jpg", content_type: "image/jpg")

  ping_pong_table_one.save!

ping_pong_table_two = PingpongTable.new({
  name: "Hi-Flyer Table",
  address: "Zimmerstraße 8, 10969 Berlin",
  description: "Play close to the Berlin's baloon flyer!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2010/4/30/1272637424146/Outdoor-table-tennis-007.jpg?width=465&dpr=1&s=none")
ping_pong_table_two.photo.attach(io: file, filename: "pong.jpg", content_type: "image/jpg")

ping_pong_table_two.save!

ping_pong_table_three = PingpongTable.new({
  name: "Tischtennis im Bohnengold",
  address: "Reichenberger Str. 153, 10999 Berlin",
  description: "When it's freezing out. Brrrr.",
  category: "Indoor",
  availability: true

})
file = URI.open("https://images.unsplash.com/photo-1519871195344-9d1a2379cea0?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBpbmclMjBwb25nJTIwdGFibGV8ZW58MHx8MHx8fDA%3D")
ping_pong_table_three.photo.attach(io: file, filename: "ping1.jpg", content_type: "image/jpg")

ping_pong_table_three.save!

ping_pong_table_four = PingpongTable.new({

  name: "Mauerpark's Pingpong",
  address: "Bernauer Straße 63, 13355 Berlin",
  description: "Challenge your friends while visiting the amazing Mauerpark!",
  category: "Outdoor",
  availability: true

 })

 file = URI.open("https://c2.staticflickr.com/6/5078/29313044693_e45059c6c7_b.jpg")
 ping_pong_table_four.photo.attach(io: file, filename: "ping2.jpg", content_type: "image/jpg")

 ping_pong_table_four.save!

ping_pong_table_five = PingpongTable.new({
  name: "Volkspark Friedrichsahain Pingpong",
  address: "Höchste Straße 17, 10249 Berlin",
  description: "Play before joining your friends in the park!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://www.exberliner.com/wp-content/uploads/2022/01/Park-am-Landvehr-Canal.jpg")
ping_pong_table_five.photo.attach(io: file, filename: "ping3.jpg", content_type: "image/jpg")
ping_pong_table_five.save!

p "Created #{PingpongTable.count} PingpongTables"

match1_time = DateTime.now + (rand * 21)
match2_time = DateTime.now + (rand * 21)
match3_time = DateTime.now + (rand * 21)
match4_time = DateTime.now + (rand * 21)
match5_time = DateTime.now + (rand * 21)
match6_time = DateTime.now + (rand * 21)

match1 = Match.new({
  name: "Fun Match in Kreuzberg",
  match_time: match1_time,
  location: "Prinzenstraße 13, 10969 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match1.save!

match2 = Match.new({
  name: "TikiTaka match",
  match_time: match2_time,
  location: "Lindenstraße 74, 10969 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match2.save!

match3 = Match.new({
  name: "Let's burn calories",
  match_time: match3_time,
  location: "Friedrichstraße 224, 10969 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match3.save!

match4 = Match.new({
  name: "Feierabend match",
  match_time: match4_time,
  location: "Ritterstraße 53, 10969 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match4.save!

match5 = Match.new({
  name: "Stress-free playtime",
  match_time: match5_time,
  location: "Hallesches Ufer 70, 10963 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match5.save!

match6 = Match.new({
  name: "Ultimate Berliner game",
  match_time: match6_time,
  location: "Möckernstrasse 120, 10963 Berlin",
  equipment: true,
  organiser_id: User.all.sample.id,
  buddy_id: nil,
  winner_id: nil,
  match_status: nil
})

match6.save!

p "Created matches"
