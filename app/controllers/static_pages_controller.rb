class StaticPagesController < ApplicationController
  before_action :authenticate_customer!
  def home
    @products = ProductSellable.limit 16
  end

  def about
    @page_title="About"
  end

  def service
    @page_title="Service"
  end

  def contact
    @page_title="Contact"
  end
end
