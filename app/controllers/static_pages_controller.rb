class StaticPagesController < ApplicationController
  before_action :authenticate_customer!
  def home
    @user=current_customer
    @conf=ActiveAdmin::Devise.config
    @page_title="Home"
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
