class CreateInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_items do |t|
      t.references :ProductOnSell, foreign_key: true
      t.integer :count
      t.float :discount
      t.boolean :returned

      t.timestamps
    end
  end
end
