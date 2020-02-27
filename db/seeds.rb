# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]).
#   Character.create(name: 'Luke', movie: movies.fir

require "open-uri"

Booking.destroy_all
Plant.destroy_all
User.destroy_all

user_one = User.create!(email: "azadeh@gmail.com", password: "123456")
user_two = User.create!(email: "mana@gmail.com" , password: "123456")
user_four = User.create!(email: "mattia@gmail.com" , password: "123456")
user_three = User.create!(email: "mason@gmail.com" , password: "123456")



plant_one = Plant.create!(name:"Orchids", description:"It's a very nice orchid plant", price: 5 , user: user_one , address: "Gendarmenmarkt, 10117 Berlin")
plant_two =Plant.create!(name:"Bamboo", description:"Very beautiful bamboo plant", price: 4, user: user_two , address: "Charitépl. 1, 10117 Berlin")
plant_three =Plant.create!(name:"Boston Fern", description:"It's fantastic fern plant", price: 3, user: user_three , address: "Schöneberger Str. 23A, 10963 Berlin")
plant_four =Plant.create!(name:"Palm", description:"It's a very palm plant", price: 5, user: user_four , address: "Eisenbahnstraße 42/43, 10997 Berlin")
plant_5 =Plant.create!(name:"Snake Plant", description:"Filter your indoor air!", price: 7, user: user_four , address: "Hagelberger Str. 53-54, 10965 Berlin")
plant_6 =Plant.create!(name:"Rose", description:"Smells like Chanel No.5", price: 5, user: user_four , address: "Großbeerenstraße 32, 10965 Berlin")
plant_7 =Plant.create!(name:"Flamingo", description:"It's filter the air!", price: 5, user: user_four , address: " Großbeerenstraße 28D, 10965 Berlin")
plant_8 =Plant.create!(name:"Heneken", description:"A cute skinny plant!", price: 5, user: user_four ,address: "Bülowstraße 56-57, 10783 Berlin")
plant_9 =Plant.create!(name:"Aloe Vera", description:"it's pretty, it's moisturizing!", price: 5, user: user_four , address: "Kurfürstenstraße 58, 10785 Berlin")
plant_10 =Plant.create!(name:"Chinese Evergreen", description:"Get that Feng-Shui fixed in you house!", price: 5, user: user_four , address: "Fritz-Wildung-Straße 9, 14199 Berlin")
plant_11 =Plant.create!(name:"Fig", description:"Amazingly cute fig plant for home", price: 5, user: user_four , address: "Potsdamer Str. 183, 14469 Potsdam")


booking_one = Booking.create!(user: user_one, plant: plant_one)
booking_two =Booking.create!(user: user_two, plant: plant_two)
booking_three =Booking.create!(user: user_three, plant: plant_three)
booking_four =Booking.create!(user: user_four, plant: plant_four)


file_one = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641001/orchid_krbqgf.jpg')
plant_one.photo.attach(io: file_one, filename: 'orchid.jpg', content_type: 'image/jpg')

file_two = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641175/bamboo_c3k7hu.jpg')
plant_two.photo.attach(io: file_two, filename: 'bamboo.jpg', content_type: 'image/jpg')

file_three = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/boston-fern_qyjdfv.jpg')
plant_three.photo.attach(io: file_three, filename: 'boston-fern.jpg', content_type: 'image/jpg')

file_four = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582641002/palm_llywuo.jpg')
plant_four.photo.attach(io: file_four, filename: 'palm.jpg', content_type: 'image/jpg')

file_5 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/snake-plant_uy3xcj.jpg')
plant_5.photo.attach(io: file_5, filename: 'snake_plant.jpg', content_type: 'image/jpg')

file_6 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/rose_u81caj.jpg')
plant_6.photo.attach(io: file_6, filename: 'rose.jpg', content_type: 'image/jpg')

file_7 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/flamingo_hmukho.jpg')
plant_7.photo.attach(io: file_7, filename: 'flamigo.jpg', content_type: 'image/jpg')

file_8 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/heneken_haxcym.jpg')
plant_8.photo.attach(io: file_8, filename: 'heneken.jpg', content_type: 'image/jpg')

file_9 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/aloe_w8wyig.jpg')
plant_9.photo.attach(io: file_9, filename: 'aloe.jpg', content_type: 'image/jpg')

file_10 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/chinese-evergreen_nqansw.jpg')
plant_10.photo.attach(io: file_10, filename: 'chinese-evergreen.jpg', content_type: 'image/jpg')

file_11 = URI.open('https://res.cloudinary.com/dsxzb0ouf/image/upload/v1582724830/fig_hiw0jw.jpg')
plant_11.photo.attach(io: file_11, filename: 'fig.jpg', content_type: 'image/jpg')


