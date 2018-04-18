class CreateProductOnSells < ActiveRecord::Migration[5.1]
  def change
    create_table :product_on_sells do |t|
      t.integer :count
      t.references :product, foreign_key: true
      t.text :description
      t.float :base_price

      t.timestamps
    end
  end
end
