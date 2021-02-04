require 'test_helper'

class WarehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse1 = warehouses(:one)
    @warehouse2 = warehouses(:two)
    @product1 = products(:one)
    @product2 = products(:two)
    @product_warehouse1 = product_warehouses(:one)
    @product_warehouse2 = product_warehouses(:two)
    @product_warehouse3 = product_warehouses(:three)
    @product_warehouse4 = product_warehouses(:four)
  end

  test "should decrease quantity product_sales" do
    post "/warehouses/sales", params: { product_id: @product1.id, warehouse_id: @warehouse1.id, quantity_for_sale: 10 }, as: :json
    @product_warehouse1.reload.quantity
    assert_equal(10, @product_warehouse1.quantity)
  end
end
