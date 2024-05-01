# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create 5 restaurants with valid attributes

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: 'DIshoom', address: '123 Soho,London', phone_number: '123-456-7890', category: 'english'}
pizza_east =  {name: 'Pizza East', address: '123 Shoreditch,London', phone_number: '123-456-7890', category: 'italian'}
silk_road = {name: 'Silk Road', address: '123 Hoe Street,London', phone_number: '123-456-7890', category: 'chinese'}
afghan_kitchen = {name: 'Afghan Kitchen', address: '123 Angel,London', phone_number: '123-456-7890', category: 'Afghan'}
hanoi_cafe = {name: 'Hanoi Cafe', address: '123 Dalston,London', phone_number: '123-456-7890', category: 'Vietnamese'}


[dishoom, pizza_east, silk_road, afghan_kitchen, hanoi_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
