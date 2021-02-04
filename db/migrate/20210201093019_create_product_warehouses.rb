class CreateProductWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :product_warehouses do |t|
      t.integer :quantity
      t.belongs_to :warehouse
      t.belongs_to :product

      t.timestamps
    end
  end
end
