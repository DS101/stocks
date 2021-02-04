class Warehouse < ApplicationRecord
  has_many :product_warehouses
  has_many :products, through: :product_warehouses

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :balance, numericality: { greater_than_or_equal_to: 0.0 }
end
