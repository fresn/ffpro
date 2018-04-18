class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :customer_id
      t.integer :product_on_sell_id
      t.string :product_name
      t.integer :count
      t.float :discount

      t.timestamps
    end
  end
end
