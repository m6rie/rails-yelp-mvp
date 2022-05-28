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
river_view = { name: 'River View', address: 'New Crane Wharf, London E1W 3TU', category: 'chinese', phone_number: '+321 23 45 67 89' }

pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '+331 23 45 67 89' }

dotori = { name: 'Dotori Japanese Sushi', address: '3 Stroud Green Rd, London N4 2DQ', category: 'japanese', phone_number: '+491 23 45 67 89' }

mukkebi = { name: 'Mukkebi', address: '152A Seven Sisters Rd, London N7 7PL', category: 'japanese', phone_number: '+311 23 45 67 89' }

casse_croute = { name: 'Casse-Croûte', address: '109 Bermondsey St, London SE1 3XB', category: 'french', phone_number: '+441 23 45 67 89' }

auberge = { name: 'Auberge', address: '1 Sandell St, London SE1 8UH', category: 'french' }

[river_view, pizza_east, dotori, mukkebi, casse_croute, auberge].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
