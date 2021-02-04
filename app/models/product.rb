class Product < ApplicationRecord
  has_many :product_warehouses
  has_many :warehouses, through: :product_warehouses

  validates :name, presence: true, uniqueness: true
  validates :cost, presence: true, numericality: { greater_than: 0.0 }
end
