# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.delete_all
  AdminUser.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+')
  Customer.delete_all
  Customer.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+')
  Product.delete_all
  (0..20).each do
    Product.create!(name: Faker::Food.unique.dish, description: Faker::Food.description, shot_description: Faker::Food.description[0, 100], Inventory: rand(0..100))
  end
end
