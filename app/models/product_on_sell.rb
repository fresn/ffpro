class ProductOnSell < ApplicationRecord
  belongs_to :product, class_name: 'Product'
  has_many :carts
  attr_readonly :product_name

  def self.all_on_sell
    # on sell s condition "count>0"
    ProductOnSell.where("count > 0")
  end

  def Product
    Product.find(product_id)
  end

  def profuct
    Product.find(product_id)
  end


end