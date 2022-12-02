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

# require "open-uri"

user_1 = User.create(username: "Julien", email: "lewagon@test.com", password: "password")
user_2 = User.create(username: "Axel", email: "axel@logan.com", password: "coucou")
user_3 = User.create(username: "Martina", email: "martina@gmail.com", password: "martina")
user_4 = User.create(username: "Gabriel", email: "cannes@gmail.com", password: "password")

move_1 = Move.create(name: "Saut de chat", level: "Intermédiaire", description: "Franchissement d'un obstacle en plongeant et en poussant sur les bras afin de faire passer ses jambes entre ses bras.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819247/Tracer/saut_de_chat_lr3olz.mp4")
move_2 = Move.create(name: "Double saut de chat", level: "Avancé", description: "Saut de chat avec deux appuis mains sur deux obstacles se suivant.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_3 = Move.create(name: "Saut de bras", level: "Intermédiaire", description: "Le saut de bras est un saut dont la réception se fait à la force des bras généralement contre un mur.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819272/Tracer/saut_de_bras_qbddw7.mp4")
move_4 = Move.create(name: "Balancé", level: "Débutant", description: "Balancement suspendu à une barre ou une branche, en général une sorte de prise d'élan avant de lâcher la barre pour enchaîner sur un autre mouvement.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_5 = Move.create(name: "Saut de précision ou saut de préss", level: "Débutant", description: "Saut pieds joints sans élan, dont la réception se fait sur une petite surface (muret par exemple). On se réceptionne en se stabilisant sur le muret.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669818870/Tracer/saut_de_precision_dap4pd.mp4")
move_6 = Move.create(name: "Saut de détente", level: "Débutant", description: "Saut réalisé avec élan pour franchir une distance impossible en saut de précision.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_7 = Move.create(name: "Saut de fond", level: "Intermédiaire", description: "Saut en contrebas effectué d'une hauteur importante, suivi généralement par une roulade.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819296/Tracer/saut_de_fond_hafflj.mp4")
move_8 = Move.create(name: "Passe barrière", level: "Intermédiaire", description: "Technique permettant de franchir une barrière en prenant appui avec les bras et en faisant passer ses jambes jointes d'un côté ou de l'autre ; il est également possible de vriller le passe barrière, on parle alors de « passe barrière 180 ».", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669818943/Tracer/passement_dmwn9k.mp4")
move_9 = Move.create(name: "Passement rapide ou saut de voleur", level: "Intermédiaire", description: "Franchissement d'un obstacle bas avec un seul appui main et en passant la jambe extérieure avant l'intérieure.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819330/Tracer/saut_du_voleur_vpnwe6.mp4")
move_10 = Move.create(name: "Saut de paresseux", level: "Avancé", description: "Franchissement d'un obstacle bas avec un seul appui main et en passant la jambe intérieure avant l'extérieure.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_11 = Move.create(name: "Passe-muraille", level: "Intermédiaire", description: "Technique de franchissement d'un mur d'une hauteur assez importante ; consiste à prendre appui sur le mur avec un pied pour atteindre une plus grande hauteur.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_12 = Move.create(name: "Planche", level: "Avancé", description: "Technique permettant d'atteindre le sommet d'un obstacle auquel on est suspendu par les bras, les pieds pendant dans le vide ou reposés contre la partie verticale d'un mur. Elle combine une traction suivie d'une antépulsion pour se hisser en haut de l'obstacle. Les pompiers français s'entraînent à ce mouvement sur une planche en hauteur, d'où son nom. Également appelé muscle up.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_13 = Move.create(name: "Dash", level: "Avancé", description: "Franchissement d'un obstacle en balançant tout d'abord les deux pieds par-dessus l'objet en question. Les deux mains servent d'appui sur l'objet (table, muret, etc.) pour terminer le franchissement de l'obstacle.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669820169/Tracer/Elevator_Music_d3gvc8.mp4")
move_14 = Move.create(name: "Tic-tac", level: "Intermédiaire", description: "Tout mouvement dont au moins un appui des jambes ne se fait pas dans l'axe de la course d'élan, peut être qualifié de tic-tac. Souvent cela consiste à prendre appui sur un mur latéral.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669818997/Tracer/tic_tac_xbo50u.mp4s")
move15 = Move.create(name: "Roulade", level: "Intermédiaire", description: "Lorsque la hauteur de chute est trop importante pour une réception simple, cette technique consiste à rouler sur la ligne diagonale du dos, dissipant ainsi l'énergie de la chute (à ne surtout pas confondre avec la roulade droite de gymnastique, dangereuse quand on fait du parkour ; par exemple la tête risquerait de cogner contre le sol). La roulade est aussi utilisée en tant que technique de « réchappe » après un faux mouvement.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669815098/Tracer/video_roulade_qldgwh.mp4")



spot_1 = Spot.create(address: "Porte d'Auguste, Nîmes", spot_difficulty: "Facile", user_id: user_1.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982294/Tracer/Porte_Auguste_tkbqpp.jpg")
spot_2 = Spot.create(address: "Place saint charles, Nîmes", spot_difficulty: "Intermédiaire", user_id: user_2.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Place_saint_charles_krxqrh.png")
spot_3 = Spot.create(address: "26 Quai de la Fontaine, Nîmes", spot_difficulty: "Intermédiaire", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982294/Tracer/Jardin_de_la_fontaine_uw6rql.jpg")
spot_4 = Spot.create(address: "Quai Georges Clemenceau, Nîmes", spot_difficulty: "Intermédiaire", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982294/Tracer/Temple_de_diana_knw3tz.jpg")
spot_5 = Spot.create(address: "Place de la Maison Carrée, Nîmes", spot_difficulty: "Avancé", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Maison_carr%C3%A9_ceuxxs.png")
spot_6 = Spot.create(address: "Place d'Assas, Nîmes", spot_difficulty: "Intermédiaire", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Place_d_assas_kl2mrs.png")
spot_7 = Spot.create(address: "Place du Chapitre, Nîmes", spot_difficulty: "Avancé", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Place_du_chapitre_xca8be.png")
spot_8 = Spot.create(address: "163 All. Frédéric Desmons, Nîmes", spot_difficulty: "Facile", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Gare_routiere_kiwdqf.png")
spot_9 = Spot.create(address: "Carré d'Art-Musée d'art contemporain, Nîmes", spot_difficulty: "Intermédiaire", user_id: user_4.id)
spot_10 = Spot.create(address: "Mont Duplan, Nîmes", spot_difficulty: "Facile", user_id: user_4.id, photo_url: "https://res.cloudinary.com/ddz8gswxn/image/upload/v1669982295/Tracer/Mont_duplan_rpfqa9.png")

spot_move1 = SpotMove.create(move_id: move_1.id, spot_id: spot_1.id)

review_1 = Review.create(spot_id: spot_1.id, user_id: user_1.id, rating: 4.5, comment: "Not bad")

bookmark_1 = Bookmark.create(spot_id: spot_1.id, user_id: user_1.id)
