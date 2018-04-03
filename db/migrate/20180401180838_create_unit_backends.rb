class CreateUnitBackends < ActiveRecord::Migration[5.1]
  def change
    create_table :unit_backends do |t|
      t.string :name
      t.string :kind
      t.decimal :ToDefaultRate

      t.timestamps
    end
  end
end
