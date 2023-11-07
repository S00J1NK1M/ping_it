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
  email: "eric@sunza.com",
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

user5 = User.new({
  email: "ardian@lw.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "Ardianino",
  address: "ardianstr. 1",
  score: nil
})

user5.save!

user6 = User.new({
  email: "akane@lw.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "Akanechen",
  address: "aknstr. 1",
  score: nil
})

user6.save!

user7 = User.new({
  email: "shakar@lw.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "Shakira",
  address: "shakarstr. 1",
  score: nil
})

user7.save!

user8 = User.new({
  email: "cuilu@lw.com",
  password: "111111",
  password_confirmation: "111111",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  nickname: "FanCuilu",
  address: "fanstr. 1",
  score: nil
})

user8.save!

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
  name: "Tischtennis in NK",
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
  name: "Volkspark Pingpong",
  address: "Höchste Straße 17, 10249 Berlin",
  description: "Play before joining your friends in the park!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://www.exberliner.com/wp-content/uploads/2022/01/Park-am-Landvehr-Canal.jpg")
ping_pong_table_5.photo.attach(io: file, filename: "ping5.jpg", content_type: "image/jpg")
ping_pong_table_5.save!


ping_pong_table_6 = PingpongTable.new({
  name: "Table for Elites",
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

file = URI.open("https://plus.unsplash.com/premium_photo-1664298217898-c62231a2e47b?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_7.photo.attach(io: file, filename: "ping7.jpg", content_type: "image/jpg")
ping_pong_table_7.save!

ping_pong_table_8 = PingpongTable.new({
  name: "Brand New Table",
  address: "Stresemannstraße 67, 10963 Berlin",
  description: "Play in the center of the city!",
  category: "Outdoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1630610280030-da8fbc7ca25a?auto=format&fit=crop&q=80&w=2874&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_8.photo.attach(io: file, filename: "ping8.jpg", content_type: "image/jpg")
ping_pong_table_8.save!


ping_pong_table_9 = PingpongTable.new({
  name: "Clean Indoor Table",
  address: "Hobrechtstraße 57, 12047 Berlin",
  description: "There is a baverage vending machine next to the table",
  category: "Indoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1461748659110-16121c049d52?auto=format&fit=crop&q=80&w=2938&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_9.photo.attach(io: file, filename: "ping9.jpg", content_type: "image/jpg")
ping_pong_table_9.save!

ping_pong_table_10 = PingpongTable.new({
  name: "Hip and cool table",
  address: "Heinrich-Heine-Straße 29, 10179 Berlin",
  description: "You can use equipment for free there",
  category: "Indoor",
  availability: true
})

file = URI.open("https://images.unsplash.com/photo-1511067007398-7e4b90cfa4bc?auto=format&fit=crop&q=80&w=2938&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ping_pong_table_10.photo.attach(io: file, filename: "ping10.jpg", content_type: "image/jpg")
ping_pong_table_10.save!

p "Created #{PingpongTable.count} PingpongTables"


# Create matches

match1_time = DateTime.now + (rand * 21)
# match2_time = DateTime.now + (rand * 21)
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

file = URI.open("https://americantabletennisplayer.weebly.com/uploads/1/2/0/5/120592416/erica-wu_orig.jpg")
match1.photo.attach(io: file, filename: "match1.jpg", content_type: "image/jpg")
match1.save!

# match2 = Match.new({
#   name: "TikiTaka ㅡatch",
#   match_time: match2_time,
#   location: "Lindenstraße 74, 10969 Berlin",
#   equipment: true,
#   organiser_id: User.all.sample.id,
#   buddy_id: nil,
#   winner_id: nil,
#   match_status: nil
# })

# file = URI.open("https://americantabletennisplayer.weebly.com/uploads/1/2/0/5/120592416/kanak-jha_orig.jpg")
# match2.photo.attach(io: file, filename: "match2.jpg", content_type: "image/jpg")
# match2.save!

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

file = URI.open("https://americantabletennisplayer.weebly.com/uploads/1/2/0/5/120592416/tim-boggan_orig.jpg")
match3.photo.attach(io: file, filename: "match3.jpg", content_type: "image/jpg")
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

file = URI.open("https://i.pinimg.com/564x/eb/6d/87/eb6d870f2881d65fb78466b82467e894.jpg")
match4.photo.attach(io: file, filename: "match4.jpg", content_type: "image/jpg")
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

file = URI.open("https://www.killerspin.com/cdn/shop/articles/competition_one_18_3008x.progressive.jpg?v=1642502239")
match5.photo.attach(io: file, filename: "match5.jpg", content_type: "image/jpg")
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

file = URI.open("https://i.insider.com/57a0ec284321f1f5018bc9a2?width=1000&format=jpeg&auto=webp")
match6.photo.attach(io: file, filename: "match6.jpg", content_type: "image/jpg")
match6.save!

p "Created #{Match.count} matches"
