# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# Cheese.create!(name: 'Cheddar', price: 3, is_best_seller: true)
# Cheese.create!(name: 'Pepper Jack', price: 4, is_best_seller: true)
# Cheese.create!(name: 'Limburger', price: 8, is_best_seller: false)


Drugunit.create(name: 'Boxes', drugunitcode: 01)
Drugunit.create(name: 'Bottles', drugunitcode: 02)
Drugunit.create(name: 'Rolls', drugunitcode: 03)
Drugunit.create(name: 'Tablets', drugunitcode:04)
Drugunit.create(name: 'Packets', drugunitcode: 05)
Drugunit.create(name: 'Pieces', drugunitcode: 06)
Drugunit.create(name: 'Tubes', drugunitcode: 07)
Drugunit.create(name: 'Pieces', drugunitcode: 07)


Drug.create!(name: 'Piriton',drugunit_id: 1, current_stock: 20, in_stock: 1, initial_stock: 20)
Drug.create!(name: 'Panadol',drugunit_id: 3, current_stock: 50, in_stock: 1, initial_stock: 50)
Drug.create!(name: 'Eno',drugunit_id: 3, current_stock: 40, in_stock: 1,initial_stock: 40)

#Drugpurchaselog.create!(order_no: 'DN:304', order_date: '2022,9,17',drug_id: 1, supplier_id: 1, purchased_units: 20, price_per_unit: 10,  total_price: 200)
#Drugpurchaselog.create!(order_no: 'DNZ720', order_date: '2022,9,17',drug_id: 2, supplier_id: 1, purchased_units: 10, price_per_unit: 50,  total_price: 500)
#Drugpurchaselog.create!(order_no: 'DNZ725', order_date: '2022,9,17',drug_id: 3, supplier_id: 1, purchased_units: 20, price_per_unit: 20,  total_price: 400)

# Itemdistributionlog.create(drug_id: 1, )

# Itemtracklog.create_id: 1_action:'initial'distributionlog_id: nilpurchaselog_id: nil)
# Itemtracklog.create_id: 2_action:'initial'distributionlog_id: nilpurchaselog_id: nil)
# Itemtracklog.create_id: 3_action:'initial'distributionlog_id: 0purchaselog_id: nil)

Department.create!(name: "Pharmacy", rep: "James")
Department.create!(name: "Laboratory", rep: "Leah")
Department.create!(name: "Facility", rep: "Janet")
Department.create!(name: "Theatre", rep: "Edith")
Department.create!(name: "Jebi", rep: "Warutere")
Department.create!(name: "Annex", rep: "Rosemary")
Department.create!(name: "Inpatient", rep: "Joan")
Department.create!(name: "Maternity", rep: "Dorcas")
Department.create!(name: "Casualty", rep: "Winnie")
Department.create!(name: "Radiology", rep: "Noah")
Department.create!(name: "Dental", rep: "Mirriam")
Department.create!(name: "Optical", rep: "Benard")


# Supplier.create!(supplier_ref: 'DCR56', supplier_name: 'AGAKHAN SUPPLIERS', contact: '0798567890', paybill_number: 890765)

