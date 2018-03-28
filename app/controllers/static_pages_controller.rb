class StaticPagesController < ApplicationController
  before_action :authenticate_customer!
  def home
    @user=current_customer
  end

  def about
  end

  def service
  end

  def contact
  end
end
