class AddIsActiveToProductOnSell < ActiveRecord::Migration[5.1]
  def change
    add_column :product_on_sells, :IsActive, :boolean
  end
end
