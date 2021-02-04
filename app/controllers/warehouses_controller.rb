class WarehousesController < ApplicationController
  def index
    warehouses = Warehouse.all
    render json: warehouses, status: :ok
  end

  def product_sales
    # byebug
    begin
      warehouse = Warehouse.find(params[:warehouse_id])
      product   = warehouse.products.find(params[:product_id])
      product_warehouse_record = warehouse.product_warehouses.find_by(product_id: product.id)
      quantity = params[:quantity_for_sale].to_i
      if product_warehouse_record.quantity > quantity
        warehouse.balance = quantity * product.cost
        product_warehouse_record.quantity -= quantity
        warehouse.save
        product_warehouse_record.save
        render json: warehouse, status: :ok
      else
        invalid_quantite
      end
    rescue
      invalid_params
    end
  end

  def warehouses_movement
    begin
      product_warehouse_record_from = record_from_product_warehouses(params[:from_warehouse_id], params[:product_id])
      product_warehouse_record_to = record_from_product_warehouses(params[:to_warehouse_id], params[:product_id])
      quantity = params[:quantity_for_move].to_i
      if product_warehouse_record_from.quantity > quantity
        product_warehouse_record_from.quantity -= quantity
        product_warehouse_record_to.quantity += quantity
        product_warehouse_record_from.save
        product_warehouse_record_to.save
        render json: product_warehouse_record_to, status: :ok
      else
        invalid_quantite
      end
    rescue
      invalid_params
    end
  end

  private

  def record_from_product_warehouses(warehouse_id, product_id)
    ProductWarehouse.where("warehouse_id = ? AND product_id = ?", warehouse_id, product_id).first
  end

  def invalid_quantite
    render json: { error_quantity: "there are not so many products at warehouse" }, status: :unprocessable_entity
  end

  def invalid_params
    render json: { error_quantity: "wrong params" }, status: :unprocessable_entity
  end
end
