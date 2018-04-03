# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.delete_all if Rails.env.development?
AdminUser.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
Customer.delete_all if Rails.env.development?
Customer.create!(email: 'mz19843@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
Customer.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+') if Rails.env.development?
UnitBackend.delete_all if Rails.env.development?
UnitBackend.create!(name:'Meter',kind:'Length',ToDefaultRate:0.001) if Rails.env.development?
UnitBackend.create!(name:'Kilometer',kind:'Length',ToDefaultRate:1) if Rails.env.development?
UnitBackend.create!(name:'Litre',kind:'Volume',ToDefaultRate:1) if Rails.env.development?
UnitBackend.create!(name:'Milliliter',kind:'Volume',ToDefaultRate:0.001) if Rails.env.development?