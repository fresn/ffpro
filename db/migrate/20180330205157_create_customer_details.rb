class CreateCustomerDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_details do |t|
      t.string :first
      t.string :last
      t.datetime :birthday
      t.string :email
      t.string :pn
      t.boolean :gender

      t.timestamps
    end
  end
end
