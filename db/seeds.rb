puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 8888 8888", category: "Indian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 7777 7777", category: "Italian" }
sushi_bar = { name: "Sushi Bar", address: "123 Main St, New York, NY 10001", phone_number: "212-555-1234", category: "Japanese" }
taco_house = { name: "Taco House", address: "456 Elm St, Los Angeles, CA 90001", phone_number: "310-555-5678", category: "Mexican" }
burger_joint = { name: "Burger Joint", address: "789 Oak St, Chicago, IL 60001", phone_number: "312-555-9876", category: "American" }

[dishoom, pizza_east, sushi_bar, taco_house, burger_joint].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
