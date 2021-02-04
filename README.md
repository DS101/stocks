# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails s for start

for move products between warehouses you must send request to /warehouses/movement with the four parameters:
1) from_warehouse_id -- id of warehouse from which you want to move the product
2) to_warehouse_id -- id of warehouse to which you want to move the product
3) product_id -- id of product which you want to move
4) quantity_for_move -- quantity for move

for sales product from warehose you must send request to /warehouses/sales with three parameters:
1) warehouse_id -- id of warehouse from which the sale is carried out
2) product_id -- id of product which you want to sale
3) quantity_for_sale -- quantity for sale
