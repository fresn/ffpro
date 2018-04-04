class Product < ApplicationRecord
  validates :count,numericality: {:greater_than_or_equal_to => 0,message: "Pruduct number couldn't less then 0"}
  validates :name,uniqueness: true
end
