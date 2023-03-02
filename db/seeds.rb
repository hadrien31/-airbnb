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
file_jungle2 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593890/Koh-Lanta/Jungle/jungle2_kt1vj2.jpg")
file_jungle3 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593886/Koh-Lanta/Jungle/jungle3_pnfewl.jpg")

jungle = Adventure.create(user: user1, title: 'Jungle Book', location: 'Pandora', decription: 'Dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués..', price: 34000 )
jungle.photos.attach({io: file_jungle1, filename: "jungle1_uoggke.jpg", content_type: "image/jpg"},{ io: file_jungle2, filename: "jungle2_kt1vj2.jpg", content_type: "image/jpg"},{  io: file_jungle3, filename: "jungle3_pnfewl.jpg", content_type: "image/jpg"})
jungle.save

file_island1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593886/Koh-Lanta/Island/island1_kgyeec.jpg")
file_island2 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593889/Koh-Lanta/Island/island2_w781eo.jpg")
file_island3 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593887/Koh-Lanta/Island/island3_vxytzy.jpg")

island = Adventure.create(user: user1, title: 'Fantastic Island', location: 'Thailande', decription: 'Vivez une expérience unique et découvrez une autre vision du voyage, durable et engagée.', price: 34000 )
island.photos.attach({io: file_island1, filename: "island1_kgyeec.jpg", content_type: "image/jpg"},{  io: file_island2, filename: "island2_w781eo.jpg", content_type: "image/jpg"},{  io: file_island3, filename: "island3_vxytzy.jpg", content_type: "image/jpg"})
island.save

file_desert1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593886/Koh-Lanta/Desert/desert1_qfnkwf.jpg")
file_desert2 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593888/Koh-Lanta/Desert/desert2_hh2a4n.jpg")
file_desert3 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593886/Koh-Lanta/Desert/desert1_qfnkwf.jpg")

desert = Adventure.create(user: user1, title: 'Desert Experience', location: 'Merzouga', decription: "Faire l'expérience d'un trek dans le désert, c'est vivre des moments uniques et privilégiés au cœur de la nature et de la culture ..", price: 34000)
desert.photos.attach({io: file_desert1, filename: "desert1_qfnkwf.jpg", content_type: "image/jpg"},{  io: file_desert2, filename: "desert2_hh2a4n.jpg", content_type: "image/jpg"},{  io: file_desert3, filename: "desert1_qfnkwf.jpg", content_type: "image/jpg"})
desert.save

file_mountain1 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593891/Koh-Lanta/Mountain/mountain1_up22cy.jpg")
file_mountain2 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593892/Koh-Lanta/Mountain/mountain2_vl9gky.jpg")
file_mountain3 = URI.open("https://res.cloudinary.com/dtlwkdqpv/image/upload/v1677593893/Koh-Lanta/Mountain/mountain3_qcebw5.jpg")

mountain = Adventure.create(user: user1, title: 'Mountain Exploration', location: 'Tyrol', decription: 'Se la jouer Mike Horn en stage de survie ', price: 34000)
mountain.photos.attach({io: file_mountain1, filename: "mountain1_up22cy.jpg", content_type: "image/jpg"},{  io: file_mountain2, filename: "mountain2_vl9gky.jpg", content_type: "image/jpg"},{  io: file_mountain3, filename: "mountain3_qcebw5.jpg", content_type: "image/jpg"})
mountain.save
