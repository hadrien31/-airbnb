# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Adventure.destroy_all

  jungle = Adventure.create(title: 'Jungle Book', location: 'Pandora', decription: 'dans le monde extraterrestre luxuriant de Pandora vivez comme  les Navi, des êtres qui semblent primitifs, mais qui sont très évolués', price: 34000 )
  island = Adventure.create(title: 'Fantastic Island', location: 'Thailande', decription: 'Vivez une expérience unique et découvrez une autre vision du voyage, durable et engagée.', price: 34000 )
  desert = Adventure.create(title: 'Desert Experience', location: 'Merzouga', decription: 'Faire l expérience d un trek dans le désert, c est vivre des moments uniques et privilégiés au cœur de la nature et de la culture ..', price: 34000)
  mountain = Adventure.create(title: 'Mountain Exploration', location: 'Tyrol', decription: 'Se la jouer Mike Horn en stage de survie ', price: 34000)
