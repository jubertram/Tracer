# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Spot.destroy_all
User.destroy_all
Move.destroy_all

require "open-uri"

user_1 = User.create!(username: "Julien", email: "lewagon@test.com", password: "password")
user_2 = User.create!(username: "Axel", email: "axel@logan.com", password: "coucou")
user_3 = User.create!(username: "Martina", email: "martina@gmail.com", password: "martina")
user_4 = User.create!(username: "Gabriel", email: "cannes@gmail.com", password: "password")

move_1 = Move.create!(name: "saut de chat", level: "Intermediate", description: "Dans sa forme classique, le saut de chat est une technique de franchissement d'obstacles à mi-hauteur. Il consiste à plonger en avant avec élan, prendre appui avec les mains sur l'obstacle et se réceptionner sur les pieds derrière l'obstacle. Dans l'idéal, le mouvement doit être effectué de manière fluide, sans perte d'élan et sans arrêt de la course à la réception.

A un niveau avancé, cette technique permet de franchir de larges obstacles et de nombreuses déclinaisons de la techniques de bases peuvent être exécutées. Étudions en premier lieu la technique de base puis nous verrons les variantes du mouvement que des traceurs ont développé autour de cette technique.

En anglais cette techniques est appelée « cat pass » ou « monkey vault » ou »kong vault ».")
move_2 = Move.create!(name: "saut de bras", level: "Intermediate", description: "Le saut de bras est un saut dont la réception se fait à la force des bras généralement contre un mur.")

spot_1 = Spot.create!(address: "260 Avenue de Gairaut", spot_difficulty: "Beginner", user_id: user_1.id, latitude: 43.738593, longitude: 7.257373)
spot_2 = Spot.create!(address: "33 Rue Clément Roassal", spot_difficulty: "Beginner", user_id: user_2.id)

# file1 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297027/Partners/image_oeqsp5.jpg")
# partner = Partner.new(first_name: "María", last_name: "Martínez", gender: "Female", address: "Cra 79A #45d 62, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Gaming", age: 20, user_id: user_1.id)
# partner.photo_url.attach(io: file1, filename: "photo1.png", content_type: "image/png")
# partner.save
