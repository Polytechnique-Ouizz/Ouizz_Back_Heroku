# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ouizzuser.create(

username: "Pierre Gaillard",
password: "pgleproduback",
email: "pierre.gaillard@gmail.com",
phone: ""
)


Ouizzuser.create(

username: "Arezki Djelouadji",
password: "arezkileproduback2",
email: "arezki.djelouadji@gmail.com",
phone: "0630627437",
)

Ouizzuser.create(
username: "Sandrine Goetz",
password: "sandrinelaprodufront",
email: "sandrine.goetz@hec.edu",
phone: ""
)

Ouizzuser.create(
username: "Raphaelle Mourey",
password: "raphlaprodufront2",
email: "raphaelle.mourey@hec.edu",
phone: ""
)


Ouizzuser.create(
username: "Guillaume Grelet",
password: "leprodulogo",
email: "guillaume.grelet@gmail.com",
phone: "",
)

Event.create(
user: 1,
name: "Ouizz meeting",
location: "Ouizz HQ",
date: "2016-10-21",
time: "2000-01-01T16:30:00.000Z",
description: "Skype with the coach",
capacity: 6,
price: 500

)

Event.create(
user: 1,
name: "Ouizz Inauguration",
location: "Ouizz HQ",
date: "2016-11-16",
time: "2000-01-01T18:00:00.000Z",
description: "Ouizz release",
capacity: 100,
price: 1
)
