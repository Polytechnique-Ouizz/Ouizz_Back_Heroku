
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
