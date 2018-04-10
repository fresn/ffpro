# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
units=Array.new
units= Unit.get_units_under_kind
AdminUser.delete_all
AdminUser.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
Customer.delete_all
Customer.create!(email: 'mz19843@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
Customer.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
UnitBackend.delete_all
UnitBackend.create!(name: 'Meter', kind: 'Length', ToDefaultRate: 0.001) if Rails.env.development?
UnitBackend.create!(name: 'Kilometer', kind: 'Length', ToDefaultRate: 1) if Rails.env.development?
UnitBackend.create!(name: 'Litre', kind: 'Volume', ToDefaultRate: 1) if Rails.env.development?
UnitBackend.create!(name: 'Milliliter', kind: 'Volume', ToDefaultRate: 0.001) if Rails.env.development?
ProductSellable.delete_all
(1..10).each do
  ProductSellable.create!(name: Faker::Food.dish, description: Faker::Food.description, count: Faker::Number.between(1, 100), unit: units.sample)
end

