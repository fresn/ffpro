class StaticPagesController < ApplicationController
  def home
    redirect_to '/product/index'
  end

  def content
  end

  def about
  end

  def service
  end
end
