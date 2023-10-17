# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
PingpongTable.destroy_all

PingpongTable.create([{
  name: "LeWagon Pingpong Table",
  address: "Kochstraße 12, 10969 Berlin",
  description: "Challenge a LeWagon student to see if they are good enough :D",
  category: "outdoor",
  availability: true
},

{
  name: "Hi-Flyer Table",
  address: "Zimmerstraße 8, 10969 Berlin",
  description: "Play close to the Berlin's baloon flyer!",
  category: "outdoor",
  availability: true

},

{
  name: "Tischtennis im Bohnengold",
  address: "Reichenberger Str. 153, 10999 Berlin",
  description: "When it's freezing out. Brrrr.",
  category: "indoor",
  availability: true

},

{
  name: "Mauerpark's Pingpong",
  address: "Bernauer Straße 63, 13355 Berlin",
  description: "Challenge your friends while visiting the amazing Mauerpark!",
  category: "outdoor",
  availability: true

},

{
  name: "Volkspark Friedrichsahain Pingpong",
  address: "Höchste Straße 17, 10249 Berlin",
  description: "Play before joining your friends in the park!",
  category: "outdoor",
  availability: true

}])

p "Created #{PingpongTable.count} PingpongTables"
