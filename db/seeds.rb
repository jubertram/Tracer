# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"

# user_1 = User.create(username: "Julien", email: "lewagon@test.com", password: "password")
# user_2 = User.create(username: "Axel", email: "axel@logan.com", password: "coucou")
# user_3 = User.create(username: "Martina", email: "martina@gmail.com", password: "martina")
# user_4 = User.create(username: "Gabriel", email: "cannes@gmail.com", password: "password")

# move_1 = Move.create(name: "Saut de chat", level: "Intermédiaire", description: "Franchissement d'un obstacle en plongeant et en poussant sur les bras afin de faire passer ses jambes entre ses bras.", pre_requis: "Bonne coordination générale et être souple", attention: "Ne pas garder les mains sur l'obstacle. Vérifier l'état de l'obstacle et du sol (débris, sol glissant...)" ,video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819247/Tracer/saut_de_chat_lr3olz.mp4")
# move_2 = Move.create(name: "Double saut de chat", level: "Avancé", description: "Saut de chat avec deux appuis mains sur deux obstacles se suivant.",pre_requis: "Savoir faire un saut de chat plongé",attention: "Ne pas garder les mains sur le premier obstacle. Vérifier l'état de l'obstacle et du sol (débris, sol glissant...)" ,video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339621/Tracer/apprendre_le_double_saut_de_chat_double_kong_itmz18.mp4")
# move_3 = Move.create(name: "Saut de bras", level: "Intermédiaire", description: "Le saut de bras est un saut dont la réception se fait à la force des bras généralement contre un mur.", pre_requis: "Échauffement des chevilles (évite les blessures). Force et confiance en soi sont de mise.", attention: "Le mur peut être glissant.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819272/Tracer/saut_de_bras_qbddw7.mp4")
# move_4 = Move.create(name: "Balancé", level: "Débutant", description: "Balancement suspendu à une barre ou une branche, en général une sorte de prise d'élan avant de lâcher la barre pour enchaîner sur un autre mouvement.", pre_requis: "Force dans les bras", attention: "Verifier que la barre ne glisse pas. Le lâché est un moment délicat, soyez sûr de vous.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339535/Tracer/apprendre_le_balance_press_tuto_parkour_raqqta.mp4")
# move_5 = Move.create(name: "Saut de précision ou saut de préss", level: "Débutant", description: "Saut pieds joints sans élan, dont la réception se fait sur une petite surface (muret par exemple). On se réceptionne en se stabilisant sur le muret.", pre_requis: "Échauffement (évite les blessures). Bonne coordination des bras et des jambes.", attention: "La surface de reception doit être sèche.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339477/Tracer/parkour_tutoriel_saut_de_pr%C3%A9cision_vzbjng.mp4")
# move_6 = Move.create(name: "Saut de détente", level: "Débutant", description: "Saut réalisé avec élan pour franchir une distance impossible en saut de précision.", pre_requis: "Échauffement (évite les blessures). Bonne coordination des bras et des jambes.", attention: "La surface de reception doit être sèche. Ne jamais se lancer sans réfléchir ! S'entraîner au sol avant de prendre des risques.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669818870/Tracer/saut_de_precision_dap4pd.mp4")
# move_7 = Move.create(name: "Saut de fond", level: "Intermédiaire", description: "Saut en contrebas effectué d'une hauteur importante, suivi généralement par une roulade.", pre_requis: "Maîtrise du saut de précison et de la roulade", attention: "Varier les hauteurs avant de prendre des risques. La surface du sol peut glisser", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669819296/Tracer/saut_de_fond_hafflj.mp4")
# move_8 = Move.create(name: "Passe barrière", level: "Intermédiaire", description: "Technique permettant de franchir une barrière en prenant appui avec les bras et en faisant passer ses jambes jointes d'un côté ou de l'autre ; il est également possible de vriller le passe barrière, on parle alors de « passe barrière 180 ».", pre_requis: "Poignets solides.", attention: "Monter bien les genoux (sinon ils tapent la barre).", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669818943/Tracer/passement_dmwn9k.mp4")
# move_8 = Move.create(name: "Passement rapide ou saut de voleur", level: "Intermédiaire", description: "Franchissement d'un obstacle bas avec un seul appui main et en passant la jambe extérieure avant l'intérieure.", pre_requis: "Poignets solides.", attention: "Ne pas aller trop vite, cela pourrait vous déstabiliser", video: "hhttps://res.cloudinary.com/ddz8gswxn/video/upload/v1670339420/Tracer/les_7_fa%C3%A7ons_de_passer_une_barri%C3%A8re_ukfxu4.mp4")
# move_9 = Move.create(name: "Passe-muraille", level: "Intermédiaire", description: "Technique de franchissement d'un mur d'une hauteur assez importante ; consiste à prendre appui sur le mur avec un pied pour atteindre une plus grande hauteur.", pre_requis: "Savoir prendre un bon appui sur un mur.", attention: "Vérifier l'état du mur( mur glissant...) et de ce qui vous attend en haut.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339367/Tracer/parkour_tutoriel_passe_muraille_bpak3r.mp4")
# move_10 = Move.create(name: "Planche", level: "Avancé", description: "Technique permettant d'atteindre le sommet d'un obstacle auquel on est suspendu par les bras, les pieds pendant dans le vide ou reposés contre la partie verticale d'un mur. Elle combine une traction suivie d'une antépulsion pour se hisser en haut de l'obstacle. Les pompiers français s'entraînent à ce mouvement sur une planche en hauteur, d'où son nom. Également appelé muscle up.", pre_requis: "Pas de prérequis, juste de l'entrainement.", attention: "Les coudes et les poignets peuvent être fragiles au début, ne pas trop forcer dessus.", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339307/Tracer/parkour_tutoriel_planche_se_hisser_sur_un_mu_pfqxdw.mp4")
# move_11 = Move.create(name: "Dash", level: "Avancé", description: "Franchissement d'un obstacle en balançant tout d'abord les deux pieds par-dessus l'objet en question. Les deux mains servent d'appui sur l'objet (table, muret, etc.) pour terminer le franchissement de l'obstacle.", pre_requis: "Savoir faire le saut de chat et le saut du voleur. Pouvoir sauter le mur sur lequel on veut dash (sans poser ses mains au début).", attention: "Bien monter vos jambes pour éviter de les cogner et ne pas sauter trop près de l'obstacle !", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670339255/Tracer/parkour_tutoriel_dash_vault_saut_de_chat_inv_oztq3k.mp4")
# move_12 = Move.create(name: "Tic-tac", level: "Intermédiaire", description: "Tout mouvement dont au moins un appui des jambes ne se fait pas dans l'axe de la course d'élan, peut être qualifié de tic-tac. Souvent cela consiste à prendre appui sur un mur latéral.", pre_requis: "Explosivité et coordination", attention: "Le mur peut être glissant...Regarder où vous allez !", video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1670334718/Tracer/parkour_tutorial_tic_tac_idlpss.mp4")
# move_13 = Move.create(name: "Roulade", level: "Intermédiaire", description: "Lorsque la hauteur de chute est trop importante pour une réception simple, cette technique consiste à rouler sur la ligne diagonale du dos, dissipant ainsi l'énergie de la chute (à ne surtout pas confondre avec la roulade droite de gymnastique, dangereuse quand on fait du parkour ; par exemple la tête risquerait de cogner contre le sol). La roulade est aussi utilisée en tant que technique de « réchappe » après un faux mouvement.", pre_requis: "Entraînement avec tapis (ou herbe).", attention: "Ne jamais poser la tête au sol. Ne pas sauter de trop haut !" ,video: "https://res.cloudinary.com/ddz8gswxn/video/upload/v1669815098/Tracer/video_roulade_qldgwh.mp4")
