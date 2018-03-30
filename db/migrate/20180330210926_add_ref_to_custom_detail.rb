class AddRefToCustomDetail < ActiveRecord::Migration[5.1]

  def change
    add_reference :customer_details, :customers,foreign_key: true
  end
end
