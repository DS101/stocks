class AddIndexToProductWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_index :product_warehouses, [:warehouse_id, :product_id], unique: true
  end
end
