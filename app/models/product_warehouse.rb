class ProductWarehouse < ApplicationRecord
  belongs_to :product
  belongs_to :warehouse

  validates :warehouse_id, uniqueness: { scope: :product_id }
end
