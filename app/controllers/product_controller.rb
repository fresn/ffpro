class ProductController < ApplicationController
  def index
    @products_on_sell = ProductOnSell.all_on_sell
    @carts = Cart.get_cart_items current_customer if current_customer
    logger.info @carts.inspect
    logger.info @products_on_sell.inspect
  end

  def search
  end

  def category
  end
end
