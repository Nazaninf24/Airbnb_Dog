# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#pour redémarer à 0 la BDD
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

10.times do 
  city = City.create(city_name: Faker::Address.city)
  dog = Dog.create(race: Faker::Creature::Dog.breed, city_id: city.id)
  dogsitter = Dogsitter.create(name: Faker::Name.name, city_id: city.id)
  stroll = Stroll.create(date: Faker::Date.between(from: 30.days.ago, to: Date.today), dog_id: dog.id, dogsitter_id: dogsitter.id)

end