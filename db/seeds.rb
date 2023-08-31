# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  category: 'belgian'
}
pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  category: 'chinese'
}
bella_italia = {
  name: 'Bella Italia',
  address: '123 Main Street, Cityville',
  phone_number: '555-1234',
  category: 'italian'
}
sushi_fusion = {
  name: 'Sushi Fusion',
  address: '456 Elm Avenue, Townburg',
  phone_number: '555-5678',
  category: 'japanese'
}
le_bistro_francais = {
  name: 'Le Bistro Français',
  address: '789 Oak Road, Villageton',
  phone_number: '555-9876',
  category: 'french'
}
epicure = {
  name: 'Epicure',
  address: '75008 Paris',
  category: 'french'
}

[dishoom, pizza_east, bella_italia, sushi_fusion, le_bistro_francais, epicure].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
