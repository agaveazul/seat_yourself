# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "Massimo Bottura",
phone_number: 1234567890,
email: "massimo.bottura@gmail.it",
password: 'abcd1234',
password_confirmation: 'abcd1234'
)

User.create!(name: 'Francis Mallmann',
email: "francis.mallmann@gmail.ar",
password: 'passw0rd',
password_confirmation: 'passw0rd'
)

User.create!(name: 'Alex Atala',
email: "alexa.atala@gmail.br",
password: '12345678',
password_confirmation: '12345678'
)

Restaurant.create!(name: 'Osteria Francescana',
capacity: 100,
street_name: 'Via Stella 22',
neighbourhood: 'City Center',
postal_code: '41100',
city: 'Modena',
province: 'Emilia-Romagna',
country: 'Italy',
cuisine_type: 'Italian',
phone_number: 39059223912,
email: 'osteria.francescana@gmail.il',
price: '$$$$',
summary: "In 2016, it was rated as the world's best restaurant in the World's 50 Best Restaurant. Imagine every nona coming together in a kitchen",
menu: "link_to_menu",
user_id: 1,
image_1: "osteria_francescana.jpg",
image_2: "#")

Restaurant.create!(name: 'Patagonia Sur',
capacity: 100,
street_name: 'Rocha 801 (Pedro de Mendoza corner) - La Boca - Buenos Aires',
neighbourhood: 'La Boca',
postal_code: '11111',
city: 'Buenos Aires',
province: 'Autonoma de Buenos Aires',
country: 'Argentina',
cuisine_type: 'Argentinian',
phone_number: 541143035917,
email: 'patagonia.sur@gmail.ar',
price: '$$$$',
summary: "Bringing the gaucho tradition to La Boca, the restaurant centers on Argentine specialtries like succulent roasted Patagonian lamb and ojo de bife",
menu: "link_to_menu",
user_id: 2,
image_1: "patagonia_sur.jpg",
image_2: "#")

Restaurant.create!(name: 'D.O.M.',
capacity: 100,
street_name: 'R. Barão de Capanema',
neighbourhood: 'Barão',
postal_code: '1111',
city: 'Sao Paolo',
province: 'Sao Paolo',
country: 'Brazil',
cuisine_type: 'Brazillian',
phone_number: 551130880762,
email: 'd.o.m@gmail.br',
price: '$$$$',
summary: "Regularly named among the best restaurants in South America and the world, D.O.M. focuses on Brazilian fare with added flair.",
menu: "link_to_menu",
user_id: 3,
image_1: "dom.jpg",
image_2: "#")

Restaurant.create!(name: 'El Celler de Can Roca',
capacity: 100,
street_name: 'Can Sunyer',
neighbourhood: 'El Girona',
postal_code: '17007',
city: 'Girona',
province: 'Girona',
country: 'Spain',
cuisine_type: 'Spanish',
phone_number: 34972222157,
email: 'restaurant@cellercanroca.com',
price: '$$$',
summary: "Much-loved former No 1 continues to set stellar standards, despite changing times. A must-visit restaurant when visiting the region.",
menu: "link_to_menu",
user_id: 4,
image_1: "food2.jpeg",
image_2: "#")

Restaurant.create!(name: 'Mugaritz',
capacity: 100,
street_name: 'R. Barão de Capanema',
neighbourhood: 'San Sebastian',
postal_code: '1111',
city: 'Errenteria',
province: 'Seville',
country: 'Spain',
cuisine_type: 'Spanish',
phone_number: 34943522455,
email: 'restaurant@mugaritz.com',
price: '$$$$$',
summary: "A powerhouse of creativity hidden in the green hinterlands of the Basque country. A must-visit restaurant when visiting the region.",
menu: "link_to_menu",
user_id: 5,
image_1: "food1.jpeg",
image_2: "#")

Restaurant.create!(name: 'Steireck',
capacity: 100,
street_name: 'Am Heumarkt 2a',
neighbourhood: 'Heumarkt',
postal_code: '1030',
city: 'Vienna',
province: 'Vienna',
country: 'Austria',
cuisine_type: 'Austrian',
phone_number: 4317133168,
email: 'pogusch@steirereck.at',
price: '$$$$',
summary: "Contemporary Austrian cooking in an equally ultra-modern setting, where delicacies are served at will. A must-visit.",
menu: "link_to_menu",
user_id: 6,
image_1: "food.jpeg",
image_2: "#")

Reservation.create!(user_id: 1, restaurant_id: 1, timeslot: "4-5", party_size: 10, date: 20170211)
Reservation.create!(user_id: 2, restaurant_id: 2, timeslot: "7-8", party_size: 6, date: 20170210)
Reservation.create!(user_id: 3, restaurant_id: 3, timeslot: "11-12", party_size: 8, date: 20170209)
