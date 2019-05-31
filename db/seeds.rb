# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Rental.destroy_all
Pool.destroy_all
User.destroy_all


puts 'Creating users...'
 marie = User.create!(
  first_name: "Marie",
  last_name: "Caulliez",
  email: "marie@gmail.com",
  password: "password",
)
marie.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559295598/e5mhsgqrrqwijo5e2w8m.png"
marie.save

charles = User.create!(
first_name: "Charles",
last_name: "Noppe",
email: "charles@gmail.com",
password: "password",
)
charles.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559310040/photo_dfh4bi.jpg"
charles.save

laure = User.create!(
first_name: "Laure",
last_name: "Manaudou",
email: "laure@gmail.com",
password: "password",
)
laure.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559310359/que-devient-l-ancienne-nageuse-laure-manaudou_q4ym3k.jpg"
laure.save

daniel = User.create!(
first_name: "Daniel",
last_name: "Feline",
email: "daniel@gmail.com",
password: "password",
)
daniel.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312297/002ps9kexcbvsbv_ts_1456645850000_wd4r8l.jpg"
daniel.save

florent = User.create!(
first_name: "Florent",
last_name: "Manaudou",
email: "florent@gmail.com",
password: "password",
)
florent.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311188/11086760_p2c0ez.jpg"
florent.save

margaux = User.create!(
    first_name: "Margaux",
    last_name: "Feslard",
    email: "margaux@gmail.com",
    password: "password",
  )
margaux.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559310020/1017760_10203784845281891_1567655934386114532_n_qmtke0.jpg"
margaux.save

gerard = User.create!(
    first_name: "Gerard",
    last_name: "Depardieu",
    email: "gerard@gmail.com",
    password: "password",
  )
gerard.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311599/gerard-depardieu-n-a-pas-ete-ravi-d-avoir-ete-apercu-par-un-journaliste-de-l-afp_l5ve5s.jpg"
gerard.save

jean = User.create!(
    first_name: "Jean",
    last_name: "DUjardin",
    email: "jean@gmail.com",
    password: "password",
  )
jean.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311524/jean-dujardin_ppacch.jpg"
jean.save

aya = User.create!(
    first_name: "Aya",
    last_name: "Nakamura",
    email: "aya@gmail.com",
    password: "password",
  )
aya.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311524/aya-nakamura-cover-djadja-nue_5bac966a250ec_wtb1oh.jpg"
aya.save

susan = User.create!(
    first_name: "Susan",
    last_name: "Boyle",
    email: "susan@gmail.com",
    password: "password",
  )
susan.remote_avatar_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311524/_105103351_boyle_getty_yy27xl.jpg"
susan.save


puts 'Creating pools...'
pool = Pool.new(
  name: "Petit coin tranquille",
  address: "15 Rue Vauban, 59350 Saint-André-lez-Lille",
  description: "Venez profiter d'une très jolie piscine dans un jardin fleuri aux portes de Lille. Des transats, tables et des chaises seront mis à votre disposition lors de votre moment détente. De quoi profiter au mieux des rayons du soleil.
  Vous trouverez également un barbecue pour votre pause repas et un terrain de pétanque pour pimenter votre journée entre deux baignades !",
  price_per_day: 80,
  capacity: 5,
  user: charles,
)
pool.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559308260/rkdr6y3w7qbpupude7np.jpg"
pool.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559308261/inzzf9q0o0rwdyuhv1ol.jpg"
pool.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559308263/f57zjpcjo66nxxju0nht.jpg"
pool.save

poola = Pool.new(
  name: "Havre de paix",
  address: "21 avenue De L'Avenir Héronparc, 59650 Villeneuve-d'Ascq",
  description: "Cette jolie piscine vous permettra de passer une très bonne journée. Traitée au sel et sans chlore, l'eau y est douce et agréable.
  Vous profiterez d'une vue sur le jardin et sur les collines avoisinantes, de quoi vous couper du monde le temps d'un après-midi ! Sans voisinage, vous serez en toute tranquillité... intimité et convivialité garanties ! ",
  price_per_day: 65,
  capacity: 9,
  user: laure,
)
poola.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312655/fffff_c3s9ss.jpg"
poola.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559310154/3_chzkra.jpg"
poola.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559310154/1_xutmpv.jpg"
poola.save

poolb = Pool.new(
  name: "Piscine chauffée à Lille",
  address: "17 Rue de la Bassée, Lille",
  description: "Bienvenue chez moi, au coeur de Lille !
  Venez profiter de notre superbe piscine chauffée à 28 degré toute l'année. Très bien entretenue, l'eau est très propre.
  Nous mettons à dispositions 4 transats et un parasol. Il y aura également une table avec des chaises pour manger ainsi qu'un barbecue.
  Nous serons heureux d'accueillir 10 personnes maximum. Les enfants sont les bienvenus, mais ils restent sous la responsabilité de leurs parents. ",
  price_per_day: 150,
  capacity: 10,
  user: florent,
)
poolb.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311149/c_guvm7x.jpg"
poolb.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311149/b_thxyix.jpg"
poolb.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311149/a_u3cbnl.jpg"
poolb.save

pool1 = Pool.create!(
  name: "Belle piscine aux portes de Lille",
  address: "22 rue Jean Talmy, Lambersart",
  description:"Ma piscine est située dans un endroit calme. Bien entretenue​,​ vous profiterez d'un cadre agréable pour passer une excellente après midi. Arrivée possible à partir de 12 h et jusqu'à 18 h. A votre disposition​,​ transats​,​ table​,​ chaises​,​ bouées et mini frigo pour apporter vos rafraîchissements.
La capacité maximale est de cinq personnes​,​ je garantis la privatisation des lieux quel que soit le nombre de réservations.
Possibilité de se garer facilement devant la maison.",
  price_per_day: 50,
  capacity: 5,
  user: margaux,
  )
pool1.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559305119/uagoy7lktmiqdp3yv01y.jpg"
pool1.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559305166/w8fcd4b5hrw8uhumrybg.jpg"
pool1.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559309486/daniel-ghio-454933-unsplash_bmgot5.jpg"
pool1.save

pool2 = Pool.create!(
  name: "Magnifique piscine chauffée Lille",
  address: "10 rue Montesqieu, Mons-en-Baroeul",
  description:"Partez passer l'après-midi dans notre magnifique piscine chauffée à Chassagny.
Vous pourrez profiter d'un jardin​,​ de transats​,​ d'une table avec des chaises​,​ ainsi que d'un barbecue.

Vous aurez bien sur accès aux toilettes ainsi qu'à une douche pour vous rincer.

Nous seons heures d'accueillir jusqu'à 15 personne maximum​,​ les enfants sont les bienvenus !

Grâce à son emplacement idéal​,​ la piscine dispose d'un ensoleillement sur toute la journée.

Vous pourrez aussi déjeuner sur place si vous le souhaitez !",
  price_per_day: 40,
  capacity: 15,
  user: jean,
  )
pool2.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559309517/jesse-gardner-433598-unsplash_bmvryc.jpg"
pool2.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559308263/f57zjpcjo66nxxju0nht.jpg"
pool2.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559305169/akklsyhpmiy2meqhza98.jpg"
pool2.save

pool3 = Pool.create!(
  name: "Petit coin tranquille avec piscine chauffée",
  address: "2 rue Emile Zola, Faches-Thumesnil",
  description:"Dans quartier agréable et serein​,​ maison indépendante avec piscine chauffée de 9m sur 4m avec espace plage et sans vis à vis.
Exposée plein sud​,​ le soleil est présent de 9h le matin jusqu'à 20h le soir.
Vous aurez à disposition des transats et des tables.

Les réservations se font pour un seul et même groupe de 2 à 6 personnes par demi-journée ce qui vous garantit la privatisation de la piscine pour le groupe avec un minimum d’une réservation pour 3 adultes (même si vous n’êtes que 2) voir ci-dessous.

Le maximum de personnes pouvant être accueillies par demi-journée est de 6 personnes. Pour des groupes plus importants​,​ me consulter.",
  price_per_day: 55,
  capacity: 6,
  user: susan,
  )
pool3.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312077/derek-thomson-274245-unsplash_kqgzyb.jpg"
pool3.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312076/kevin-laminto-1224865-unsplash_pmsfqn.jpg"
pool3.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312076/gerd-schrade-1150695-unsplash_a3fs6c.jpg"
pool3.save

pool4 = Pool.create!(
  name: "Piscine au calme à Lambersart",
  address: "22 rue Jean Talmy, Lambersart",
  description:"Bonjour à tous et bienvenu chez nous !

Venez en famille ou entre amis profiter de notre superbe piscine. Située dans un cadre idéal​,​ sans vis-à-vis ​,​ vous pourrez vous amuser en toute intimité.

Nous serons heureux d'accueillir entre 5 et 10 personnes maximum. Les enfants sont les bienvenus​,​ mais ils restent sous l'entière responsabilité de leurs parents.

Nous mettrons à votre disposition​,​ des transats ainsi qu'une table avec des chaises. ",
  price_per_day: 100,
  capacity: 10,
  user:aya,
  )
pool4.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312192/humphrey-muleba-1095899-unsplash_aezhqc.jpg"
pool4.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312192/nick-fewings-674083-unsplash_olwmoo.jpg"
pool4.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559311928/cnmb7nhv7be5rkjwfumx.jpg"
pool4.save

pool5 = Pool.create!(
  name: "Jolie piscine contemporaine cadre exotique",
  address: "2 rue Pierre Curie, Lille",
  description:"Située sur les hauteurs de la valette du var​,​ dans le quartier du partegal​,​ la piscine dispose d'un cadre merveilleux pour passer un bon moment en famille ou entre amis.
Très bien placée​,​ elle est ensoleillée du matin jusqu'à 17h30 le soir ! Vous pourrez donc profiter pleinement des rayons chauds du soleil.
Au niveau des dimensions​,​ la piscine fait du 7m par 3.5m.
Vous ne pourrez pas avoir accès à l'interieur de la maison puisqu'il sera fermé.",
  price_per_day: 120,
  capacity: 10,
  user:gerard,
  )
pool5.remote_picture_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312362/joao-mansano-1497129-unsplash_jslpot.jpg"
pool5.remote_picture1_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312362/grant-durr-1133571-unsplash_upwczj.jpg"
pool5.remote_picture2_url = "https://res.cloudinary.com/dsp2exmo1/image/upload/v1559312362/sergi-kabrera-1245060-unsplash_1_gdxmqc.jpg"
pool5.save

puts 'Creating reviews...'

review1 = Review.new(
  rating: "5",
  description: "Je recommande vivement cette piscine. Fidèle à la description, propre et bien équipé. La réactivité de Susan est au top !",
  user: margaux,
  pool: pool1,
  )
review1.save

review2 = Review.new(
  rating: "4",
  description: "Un véritable petit coin de paradis, très bien équipé : le spa est top, le sauna aussi, et la terrasse est très intimiste. L'hôte très réactive et agréable Nous avons passé un excellent week-end en amoureux, je recommande sans hésiter!",
  user: aya,
  pool: pool2,
  )
review2.save

review3 = Review.new(
  rating: "4",
  description: "Accueil chaleureux. L'endroit etait parfait au calme et décoré avec beaucoup de goût. Nous avons passé un moment inoubliable, nous reviendrons avec plaisir.",
  user: gerard,
  pool: pool3,
  )
review3.save

review4 = Review.new(
  rating: "3",
  description: "Piscine très calme et relaxante, tout est reunis pour passé un agréable moment . La propreté laisse à désirer cependant.",
  user: susan,
  pool: pool4,
  )
review4.save

review5 = Review.new(
  rating: "5",
  description: "Great place. Hot tub and sauna inside apartment are an unusual touch. Peaceful garden for outside dining or relaxing. Host is welcoming and helpful. We'll stay here again next time we are there.
",
  user: jean,
  pool: pool5,
  )
review5.save

reviewa = Review.new(
  description: "Les vacances avant l'heure ! Nous avons passé un super moment dans la piscine de Florent ! Tout était parfait. Je vous la conseille vivement ! Merci encore Florent.",
  rating: 5,
  user: laure,
  pool: poolb,
)
reviewa.save

reviewb = Review.new(
  description: "Superbe aprem chez Flo je me suis senti comme une crevette dans l'eau",
  rating: 4,
  user: daniel,
  pool: poolb,
)
reviewb.save

