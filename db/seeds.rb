# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Adventure.destroy_all
User.destroy_all

user1 = User.create!(email:'toto@gmail.com', password:"123456", username:"toto premier")
  file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  jungle = Adventure.create!(title: 'Jungle Book', location: 'Pandora', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000 )
  jungle.photo.attach(io: file_jungle1, filename: "jungle1_uoggke.jpg", content_type: "image/jpg")
  jungle.save
  island = Adventure.create!(title: 'Fantastic Island', location: 'Thailande', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000 )
  desert = Adventure.create!(title: 'Desert Experience', location: 'Pandora', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000)
  jungle = Adventure.create!(title: 'Jungle Book', location: 'Pandora', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000 )
