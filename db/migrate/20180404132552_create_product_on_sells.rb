class CreateProductOnSells < ActiveRecord::Migration[5.1]
  def change
    create_table :product_on_sells do |t|
      t.references :Product, foreign_key: true
      t.datetime :StartAt
      t.datetime :EndAt
      t.float :BasePrice
      t.integer :Count
      t.string :ShortDescription
      t.text :Description

      t.timestamps
    end
  end
end
