class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :address
      t.float :balance, default: 0.0

      t.timestamps
    end
  end
end
