class Cart::Item < ApplicationRecord
  validates :count, presence: true, :numericality => {greater_than: 0}
  # before_save :set_product_name

  def ProductOnSell
    ProductOnSell.find(product_on_sell_id)
  end

  def Customer
    Customer.find(customer_id)
  end

  private

  def set_product_name
    if product_id
      product_name = Product.find(product_id)
    else
      raise(Exception, '[Cart::tem#set_product_name] fails setting product_name, product_id not set yet.')
    end
  end
end
