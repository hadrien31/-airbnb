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

user1 = User.create(email:"toto@gmail.com", password:"123456", username:"toto premier")

file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  jungle = Adventure.create!(user: user1, title: 'Jungle Book', location: 'Pandora', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000 )
  jungle.photos.attach({io: file_jungle1, filename: "jungle1_uoggke.jpg", content_type: "image/jpg"})
  jungle.save!
  file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  island = Adventure.create!(user: user1, title: 'Fantastic Island', location: 'Thailande', decription: 'Vivez une expérience unique et découvrez une autre vision du voyage, durable et engagée.', price: 34000 )
 island.photos.attach({io: file_jungle1, filename: "jungle2_uoggke.jpg", content_type: "image/jpg"})
 island.save!
 file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  desert = Adventure.create!(user: user1, title: 'Desert Experience', location: 'Merzouga', decription: 'Faire l expérience d un trek dans le désert, c est vivre des moments uniques et privilégiés au cœur de la nature et de la culture ..', price: 34000)
 desert.photos.attach({io: file_jungle1, filename: "jungle3_uoggke.jpg", content_type: "image/jpg"})
 desert.save!
 file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  mountain = Adventure.create!(user: user1, title: 'Mountain Exploration', location: 'Tyrol', decription: 'Se la jouer Mike Horn en stage de survie ', price: 34000)
 mountain.photos.attach({io: file_jungle1, filename: "jungle4_uoggke.jpg", content_type: "image/jpg"})
  mountain.save!
  file_jungle1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593896/Koh-Lanta/Jungle/jungle1_uoggke.jpg")
  arctic = Adventure.create!(user: user1, title: 'arctic Exploration', location: 'arctic island', decription: 'gla gla ', price: 34000)
  arctic.photos.attach({io: file_jungle1, filename: "jungle5_uoggke.jpg", content_type: "image/jpg"})
  arctic.save!
