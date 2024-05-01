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

Restaurant.create(name: 'Chinese Restaurant', address: '123 Hoe Street,London', phone_number: '123-456-7890', category: 'chinese')
Restaurant.create(name: 'Italian Restaurant', address: 'Soho, London', phone_number: '234-567-8901', category: 'italian')
Restaurant.create(name: 'Japanese Restaurant', address: '345, Camden Town, London', phone_number: '345-678-9012', category: 'japanese')
Restaurant.create(name: 'French Restaurant', address: '678 Leicester Square, London', phone_number: '456-789-0123', category: 'french')
Restaurant.create(name: 'Belgian Restaurant', address: '291 Walthamstow, London', phone_number: '567-890-1234', category: 'belgian')
