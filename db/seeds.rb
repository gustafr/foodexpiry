# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds', 'products.yml')
config = YAML::load_file(seed_file)
counter = 0
Product.create!(config) do |c|
  puts "Create product #{counter += 1} with name: #{c.name}"
end
