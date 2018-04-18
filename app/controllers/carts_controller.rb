class CartsController < ActionController::Base

  def create
    # render html: "#{params[:count]} #{current_customer.id} #{params[:product_id]}"
    Cart.add params[:product_on_sell_id].to_i, current_customer.id, params[:count].to_i
    redirect_to request.referer
  end

  def update

    if params[:commit] == 'update'
      Cart.update params[:product_on_sell_id].to_i, current_customer.id, params[:count].to_i
    end

    if params[:commit] == 'delete'
      Cart.delete params[:product_on_sell_id].to_i, current_customer.id
    end
    redirect_to request.referer
  end

end

