# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# urls = ["https://images.unsplash.com/photo-1519871195344-9d1a2379cea0?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBpbmclMjBwb25nJTIwdGFibGV8ZW58MHx8MHx8fDA%3D", "https://images.unsplash.com/photo-1615177981645-51107b202210?auto=format&fit=crop&q=80&w=2827&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]
# file = URI.open()
# LeWagon_Pingpong_Table = PingpongTable.new(name: "LeWagon Pingpong Table", address: "Kochstraße 12, 10969 Berlin", description: "Challenge a LeWagon student to see if they are good enough :D", category: "outdoor", availability: true)
# LeWagon_Pingpong_Table.photo.attach(io: file, filename: "ping.jpg", content_type: "image/jpg")
# LeWagon_Pingpong_Table.save

require "open-uri"

# Destroy old DB
PingpongTable.destroy_all


# Create users
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

p "Created #{User.count} users"


# Create pingpong tables

ping_pong_table_1 = PingpongTable.new({
  name: "LeWagon Pingpong Table",
  address: "Kochstraße 12, 10969 Berlin",
  description: "Challenge a LeWagon student to see if they are good enough :D",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1593442808948-b1df0a8f8047?auto=format&fit=crop&q=80&w=2906&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_1.photo.attach(io: file, filename: "ping.jpg", content_type: "image/jpg")
ping_pong_table_1.save!


ping_pong_table_2 = PingpongTable.new({
  name: "Hi-Flyer Table",
  address: "Zimmerstraße 8, 10969 Berlin",
  description: "Play close to the Berlin's baloon flyer!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2010/4/30/1272637424146/Outdoor-table-tennis-007.jpg?width=465&dpr=1&s=none")
ping_pong_table_2.photo.attach(io: file, filename: "pong.jpg", content_type: "image/jpg")
ping_pong_table_2.save!


ping_pong_table_3 = PingpongTable.new({
  name: "Tischtennis im Bohnengold",
  address: "Reichenberger Str. 153, 10999 Berlin",
  description: "When it's freezing out. Brrrr.",
  category: "Indoor",
  availability: true

})

file = URI.open("https://images.unsplash.com/photo-1519871195344-9d1a2379cea0?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBpbmclMjBwb25nJTIwdGFibGV8ZW58MHx8MHx8fDA%3D")
ping_pong_table_3.photo.attach(io: file, filename: "ping3.jpg", content_type: "image/jpg")
ping_pong_table_3.save!


ping_pong_table_4 = PingpongTable.new({

  name: "Mauerpark's Pingpong",
  address: "Bernauer Straße 63, 13355 Berlin",
  description: "Challenge your friends while visiting the amazing Mauerpark!",
  category: "Outdoor",
  availability: true

 })

 file = URI.open("https://c2.staticflickr.com/6/5078/29313044693_e45059c6c7_b.jpg")
 ping_pong_table_4.photo.attach(io: file, filename: "ping4.jpg", content_type: "image/jpg")
 ping_pong_table_4.save!


ping_pong_table_5 = PingpongTable.new({
  name: "Volkspark Friedrichsahain Pingpong",
  address: "Höchste Straße 17, 10249 Berlin",
  description: "Play before joining your friends in the park!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://www.exberliner.com/wp-content/uploads/2022/01/Park-am-Landvehr-Canal.jpg")
ping_pong_table_5.photo.attach(io: file, filename: "ping5.jpg", content_type: "image/jpg")
ping_pong_table_5.save!


ping_pong_table_6 = PingpongTable.new({
  name: "Table for Elite Players",
  address: "Inge-Beisheim-Platz 1, 10785 Berlin",
  description: "Play in the center of the city!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1639650538792-ee5fad574d6f?auto=format&fit=crop&q=80&w=2942&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_6.photo.attach(io: file, filename: "ping6.jpg", content_type: "image/jpg")
ping_pong_table_6.save!


ping_pong_table_7 = PingpongTable.new({
  name: "Warm and Nice",
  address: "Zimmerstraße 54, 10117 Berlin",
  description: "Play in the center of the city!",
  category: "Indoor",
  availability: true
})

file = URI.open("https://unsplash.com/ko/%EC%82%AC%EC%A7%84/%EB%9D%BC%EC%BC%93%EC%9D%84-%EB%93%A0-%EB%91%90-%EB%AA%85%EC%9D%98-%ED%99%9C%EB%8F%99%EC%A0%81%EC%9D%B8-%EB%85%B8%EC%9D%B8%EC%9D%B4-%ED%99%80%EC%9D%98-%ED%81%B0-%ED%85%8C%EC%9D%B4%EB%B8%94-%EC%98%86%EC%97%90%EC%84%9C-%ED%83%81%EA%B5%AC%EB%A5%BC-%EC%B9%98%EA%B3%A0-%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4-3D18bJTKLzg")
ping_pong_table_7.photo.attach(io: file, filename: "ping7.jpg", content_type: "image/jpg")
ping_pong_table_7.save!

ping_pong_table_8 = PingpongTable.new({
  name: "brand New Table",
  address: "Stresemannstraße 67, 10963 Berlin",
  description: "Play in the center of the city!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1630610280030-da8fbc7ca25a?auto=format&fit=crop&q=80&w=2874&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_8.photo.attach(io: file, filename: "ping8.jpg", content_type: "image/jpg")
ping_pong_table_8.save!

p "Created #{PingpongTable.count} PingpongTables"


# Create matches

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

p "Created #{Match.count} matches"
