# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.delete_all

Recipe.create([
  { name: "Spaghetti Carbonara", description: "A true Italian Carbonara recipe, it's ready in about 30 minutes.", image_url: "https://realfood.tesco.com/media/images/1400x919-SpaghettiCarbonara-557b6ff5-c4f3-4565-ae8e-a506f7dcc415-0-1400x919.jpg", rating: 8.5 },
  { name: "Margherita Pizza", description: "A classic pizza with fresh mozzarella, basil, and a tomato base.", image_url: "https://www.inspiredtaste.net/wp-content/uploads/2023/09/Margherita-Pizza-5-1200.jpg", rating: 9.0 },
  { name: "Lasagna", description: "Layered pasta, meat, and cheese, baked to perfection.", image_url: "https://www.jessicagavin.com/wp-content/uploads/2017/07/meat-lasagna-1200.jpg", rating: 7.8 },
  { name: "Penne Arrabbiata", description: "Spicy pasta with a tangy tomato and chili sauce.", image_url: "https://images.immediate.co.uk/production/volatile/sites/2/2023/09/Penne-arrabbiata-72de043.jpg?resize=900%2C471", rating: 7.2 }
])
