class ProductOnSell < ApplicationRecord
  validates :ShortDescription, length: {in: 20..140, message: "Length must be between 20 and 140 to have a better display"}
  validates :BasePrice, numericality: {:greater_than_or_equal_to => 0, message: "Price can not be negative "}
  belongs_to :Product
end
