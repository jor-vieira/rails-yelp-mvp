# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Epicure", address: "75008 Paris", phone_number: "123456789", category: "french")
Restaurant.create!(name: "Sushi Samba", address: "Tokyo", phone_number: "987654321", category: "japanese")
Restaurant.create!(name: "Pasta House", address: "Rome", phone_number: "111222333", category: "italian")
Restaurant.create!(name: "Dragon Wok", address: "Shanghai", phone_number: "444555666", category: "chinese")
Restaurant.create!(name: "Brussels Bites", address: "Brussels", phone_number: "777888999", category: "belgian")
puts "Restaurants created!"
