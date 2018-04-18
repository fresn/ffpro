class Cart
  def self.table_name_prefix
    'cart_'
  end


  def self.get_cart_items(current_customer)
    entries = []
    total = 0
    rec = Cart::Item.where(customer_id: current_customer.id)
    unless rec.none?
      rec.each do |item|
        entries << {
            product_on_sell_id: item.ProductOnSell.id,
            product_name: item.ProductOnSell.Product.name,
            count: item.count,
            base_price: item.ProductOnSell.base_price
        }
        total += item.ProductOnSell.base_price * item.count
      end

      entries << {total: total}
      entries
    end
  end

  def self.delete(product_on_sell_id, current_customer_id)
    local_cart_item = find_cart_item_rec(product_on_sell_id, current_customer_id)
    local_cart_item.destroy
  end

  # @param [Integer] product_on_sell
  # @param [Integer] current_customer
  # @param [Integer] count
  def self.add(product_on_sell_id, current_customer_id, count)

    local_pos = ProductOnSell.find(product_on_sell_id)
    local_customer = Customer.find(current_customer_id)
    local_cart_item = find_cart_item_rec(product_on_sell_id, current_customer_id)
    if local_cart_item.nil?
      Cart::Item.create! product_on_sell_id: local_pos.id, customer_id: local_customer.id, count: count
    else
      local_cart_item.count += count
      local_cart_item.save
    end
  end

  # @param [Integer] product_on_sell
  # @param [Integer] count
  # @param [Integer] current_customer
  def self.update(product_on_sell, current_customer, count)
    rec = Cart::Item.where('product_on_sell_id = ? and customer_id = ?', product_on_sell, current_customer)
    if !rec.none?
      rec.first.count = count
      rec.first.save
    else
      raise Exception.new('rec not found ')
    end
  end

  def checkout

  end

  #@return [Cart::Item]
  def self.find_cart_item_rec(product_on_sell_id, current_customer_id)
    Cart::Item.where('product_on_sell_id = ? and customer_id = ?', product_on_sell_id, current_customer_id).first
  end


end