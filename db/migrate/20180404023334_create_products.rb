class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :count
      t.string :unit
      t.float :value
      t.string :signature_pic_url

      t.timestamps
    end
  end
end
