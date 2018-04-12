class Product < ApplicationRecord
  validates :count,numericality: {:greater_than_or_equal_to => 0,message: "Pruduct number couldn't less then 0"}
  validates :name,uniqueness: true
  def self.add_inventory product_id,count
    if count.class == Integer
      l=Product.find(product_id)
      l[0].count +=count
    end
  end
  def self.search_product_by_name name
    if name.class == String
      ProductOnSell.where(name:name).first
    else
      raise Exception.new("Product Name should be String")
    end
  end
end
