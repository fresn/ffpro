# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.delete_all
  Customer.delete_all
  ProductOnSell.delete_all
  Product.delete_all
  Cart.delete_all
  AdminUser.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+')

  Customer.create!(email: 'emen.fresn.ma@gmail.com', password: '2929899+-+', password_confirmation: '2929899+-+')

  (0..20).each do
    Product.create!(name: Faker::Food.unique.dish,
                    description: Faker::Food.description,
                    shot_description: Faker::Food.description[0, 100],
                    Inventory: rand(0..100),
                    img_url: "https://storage.googleapis.com/ol_store/uploads/product/img_url/21/微信图片_20180407091859.jpg")
  end
  Product.all.each do |product|
    product.ProductOnSell.create!(count: rand(product.Inventory),base_price:rand(1.0..30.0).round(2))
  end

end
