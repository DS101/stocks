require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "Produc should not save without name" do
    product = Product.new
    assert_not product.save, 'saved product without name'
  end

  test "Produc should not save without cost" do
    product = Product.new
    product.name = "First product"
    assert_not product.save, 'saved product without cost'
  end

  test "Produc should save with cost and name" do
    product = Product.new
    product.name = "First product"
    product.cost = 1.5
    assert product.save, 'saved product with cost and name'
  end

  test "Produc should not save with cost equal zero" do
    product = Product.new
    product.name = "First product"
    product.cost = 0
    assert_not product.save, 'saved product with zero cost'
  end
end
