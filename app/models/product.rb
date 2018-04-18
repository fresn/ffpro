class Product < ApplicationRecord
  validates :name, presence: true
  mount_uploader :img_url, ImageUploader
  has_many :ProductOnSell

  def self.find_all_products_on_sell
    Product.joins(:ProductOnSell)
  end
end
