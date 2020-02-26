# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]).
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Booking.destroy_all
Plant.destroy_all
User.destroy_all

user_one = User.create!(email: "azadeh@gmail.com", password: "123456")
user_two = User.create!(email: "mana@gmail.com" , password: "123456")
user_four = User.create!(email: "mattia@gmail.com" , password: "123456")
user_three = User.create!(email: "mason@gmail.com" , password: "123456")


plant_one = Plant.create!(name:"orchids", description:"its a very nice orchid plant", user: user_one, address: "Gendarmenmarkt, 10117 Berlin")
plant_two =Plant.create!(name:"bamboo", description:"very beautiful bamboo plant", user: user_two, address: "Charitépl. 1, 10117 Berlin")
plant_three =Plant.create!(name:"boston fern", description:"It's fantastic fern plant", user: user_three, address: "Schöneberger Str. 23A, 10963 Berlin")
plant_four =Plant.create!(name:"palm", description:"its a very palm plant", user: user_four, address: "Eisenbahnstraße 42/43, 10997 Berlin")


booking_one = Booking.create!(date: "1.2.2020", user: user_one, plant: plant_one)
booking_two =Booking.create!(date: "1.2.2020", user: user_two, plant: plant_two)
booking_three =Booking.create!(date: "1.2.2020", user: user_three, plant: plant_three)
booking_four =Booking.create!(date: "1.2.2020", user: user_four, plant: plant_four)


file_one = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641001/orchid_krbqgf.jpg')
plant_one.photo.attach(io: file_one, filename: 'orchid.jpg', content_type: 'image/jpg')


file_two = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641175/bamboo_c3k7hu.jpg')
plant_two.photo.attach(io: file_two, filename: 'bamboo.jpg', content_type: 'image/jpg')


file_three = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/boston-fern_qyjdfv.jpg')
plant_three.photo.attach(io: file_three, filename: 'boston-fern.jpg', content_type: 'image/jpg')

file_four = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/palm_llywuo.jpg')
plant_four.photo.attach(io: file_four, filename: 'palm.jpg', content_type: 'image/jpg')


