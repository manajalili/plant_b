# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Plant.destroy_all
User.destroy_all

user_one = User.create(email: "azadeh@gmail.com", password: "123456")
user_two = User.create(email: "mana@gmail.com" , password: "123456")
user_three = User.create(email: "mason@gmail.com" , password: "123456")
user_four = User.create(email: "mattia@gmail.com" , password: "123456")


plant_one = Plant.create(name:"orchids", description:"its a very nice orchid plant", user: user_one )
plant_two =Plant.create(name:"bamboo", description:"very beautiful bamboo plant", user_id: user_two.id )
plant_three =Plant.create(name:"boston fern", description:"It's fantastic fern plant", user_id: user_three.id )
plant_four =Plant.create(name:"palm", description:"its a very palm plant", user_id: user_four.id )


booking_one = Booking.create(date: "1.2.2020", user: user_one, plant: plant_one)
booking_two =Booking.create(date: "1.2.2020", user_id: "2", plant_id: plant_two.id)
booking_three =Booking.create(date: "1.2.2020", user_id: "3", plant_id: plant_three.id)
booking_four =Booking.create(date: "1.2.2020", user_id: "4", plant_id: plant_four.id)


require "open-uri"

file_one = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641001/orchid_krbqgf.jpg')
plant_one.photo.attach(io: file_one, filename: 'orchid.png', content_type: 'image/png')


file_two = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641175/bamboo_c3k7hu.jpg')
plant_one.photo.attach(io: file_two, filename: 'bamboo.png', content_type: 'image/png')


file_three = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/boston-fern_qyjdfv.jpg')
plant_one.photo.attach(io: file_three, filename: 'fern.png', content_type: 'image/png')

file_four = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/palm_llywuo.jpg')
plant_one.photo.attach(io: file_four, filename: 'palm.png', content_type: 'image/png')


