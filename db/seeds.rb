# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
warehouse1 = Warehouse.create({ name: "First warehouse", address: "First address", balance: 0.0 })
warehouse2 = Warehouse.create({ name: "Second warehouse", address: "Second address", balance: 0.0 })
product1 = Product.create({ name: "Bread", cost: 1.5 })
product2 = Product.create({ name: "Butter", cost: 2.5 })
product_warehouse1 = ProductWarehouse.create({ warehouse_id: warehouse1.id, product_id: product1.id, quantity: 20 })
product_warehouse2 = ProductWarehouse.create({ warehouse_id: warehouse1.id, product_id: product2.id, quantity: 20 })
product_warehouse3 = ProductWarehouse.create({ warehouse_id: warehouse2.id, product_id: product2.id, quantity: 40 })
product_warehouse4 = ProductWarehouse.create({ warehouse_id: warehouse2.id, product_id: product1.id, quantity: 40 })
