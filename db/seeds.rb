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

move_1 = Move.create!(name: "Saut de chat", level: "Intermediate", description: "Franchissement d'un obstacle en plongeant et en poussant sur les bras afin de faire passer ses jambes entre ses bras.")
move_2 = Move.create!(name: "Double saut de chat", level: "Advanced", description: "Saut de chat avec deux appuis mains sur deux obstacles se suivant.")
move_3 = Move.create!(name: "Saut de bras", level: "Intermediate", description: "Le saut de bras est un saut dont la réception se fait à la force des bras généralement contre un mur.")
move_4 = Move.create!(name: "Balancé", level: "Beginner", description: "Balancement suspendu à une barre ou une branche, en général une sorte de prise d'élan avant de lâcher la barre pour enchaîner sur un autre mouvement.")
move_5 = Move.create!(name: "Saut de précision ou saut de préss", level: "Beginner", description: "Saut pieds joints sans élan, dont la réception se fait sur une petite surface (muret par exemple). On se réceptionne en se stabilisant sur le muret.")
move_6 = Move.create!(name: "Saut de détente", level: "Beginner", description: "Saut réalisé avec élan pour franchir une distance impossible en saut de précision.")
move_7 = Move.create!(name: "Saut de fond", level: "Intermediate", description: "Saut en contrebas effectué d'une hauteur importante, suivi généralement par une roulade.")
move_8 = Move.create!(name: "Passe barrière", level: "Intermediate", description: "Technique permettant de franchir une barrière en prenant appui avec les bras et en faisant passer ses jambes jointes d'un côté ou de l'autre ; il est également possible de vriller le passe barrière, on parle alors de « passe barrière 180 ».")
move_9 = Move.create!(name: "Passement rapide ou saut de voleur", level: "Intermediate", description: "Franchissement d'un obstacle bas avec un seul appui main et en passant la jambe extérieure avant l'intérieure.")
move_10 = Move.create!(name: "Saut de paresseux", level: "Advanced", description: "Franchissement d'un obstacle bas avec un seul appui main et en passant la jambe intérieure avant l'extérieure.")
move_11 = Move.create!(name: "Passe-muraille", level: "Intermediate", description: "Technique de franchissement d'un mur d'une hauteur assez importante ; consiste à prendre appui sur le mur avec un pied pour atteindre une plus grande hauteur.")
move_12 = Move.create!(name: "Planche", level: "Advanced", description: "Technique permettant d'atteindre le sommet d'un obstacle auquel on est suspendu par les bras, les pieds pendant dans le vide ou reposés contre la partie verticale d'un mur. Elle combine une traction suivie d'une antépulsion pour se hisser en haut de l'obstacle. Les pompiers français s'entraînent à ce mouvement sur une planche en hauteur, d'où son nom. Également appelé muscle up.")
move_13 = Move.create!(name: "Dash", level: "Advanced", description: "Franchissement d'un obstacle en balançant tout d'abord les deux pieds par-dessus l'objet en question. Les deux mains servent d'appui sur l'objet (table, muret, etc.) pour terminer le franchissement de l'obstacle.")
move_14 = Move.create!(name: "Saut de bras", level: "Intermediate", description: "Saut utilisant pour la réception les bras, seuls ou en complément des jambes.")
move_15 = Move.create!(name: "Tic-tac", level: "Intermediate", description: "Tout mouvement dont au moins un appui des jambes ne se fait pas dans l'axe de la course d'élan, peut être qualifié de tic-tac. Souvent cela consiste à prendre appui sur un mur latéral.")
move_16 = Move.create!(name: "Roulade", level: "Intermediate", description: "Lorsque la hauteur de chute est trop importante pour une réception simple, cette technique consiste à rouler sur la ligne diagonale du dos, dissipant ainsi l'énergie de la chute (à ne surtout pas confondre avec la roulade droite de gymnastique, dangereuse quand on fait du parkour ; par exemple la tête risquerait de cogner contre le sol). La roulade est aussi utilisée en tant que technique de « réchappe » après un faux mouvement.")




spot_1 = Spot.create!(address: "260 Avenue de Gairaut", spot_difficulty: "Beginner", user_id: user_1.id)
spot_2 = Spot.create!(address: "33 Rue Clément Roassal", spot_difficulty: "Beginner", user_id: user_2.id)

spot_move1 = SpotMove.create!(move_id: move_1.id, spot_id: spot_1.id)

review_1 = Review.create!(spot_id: spot_1.id, user_id: user_1.id, rating: 4.5, comment: "Not bad")

bookmark_1 = Bookmark.create!(spot_id: spot_1.id, user_id: user_1.id)


# file1 = URI.open("https://res.cloudinary.com/ddz8gswxn/image/upload/v1669297027/Partners/image_oeqsp5.jpg")
# partner = Partner.new(first_name: "María", last_name: "Martínez", gender: "Female", address: "Cra 79A #45d 62, Los Pinos, Medellín, La América, Medellín, Antioquia, Colombia", temperament: "Shy", interest: "Gaming", age: 20, user_id: user_1.id)
# partner.photo_url.attach(io: file1, filename: "photo1.png", content_type: "image/png")
# partner.save
