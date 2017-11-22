# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all
Review.destroy_all

categories = %w(chinese italian french japanese belgian)
restaurants = []

5.times do
  restaurants << Restaurant.create(name: Faker::Name.name, address: Faker::Address.street_address, category: categories.sample)
end

restaurants.each do |restaurant|
  Review.create(content: Faker::TheThickOfIt.department, rating: (0..5).to_a.sample, restaurant: restaurant)
end

puts "Finisher!"
