class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :shot_description
      t.integer :Inventory
      t.string :img_url

      t.timestamps
    end
  end
end
