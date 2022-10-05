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


Itemunit.create(name: 'Boxes', itemunitcode: 01)
Itemunit.create(name: 'Bottles', itemunitcode: 02)
Itemunit.create(name: 'Rolls', itemunitcode: 03)
Itemunit.create(name: 'Tablets', itemunitcode:04)
Itemunit.create(name: 'Packets', itemunitcode: 05)
Itemunit.create(name: 'Pieces', itemunitcode: 06)
Itemunit.create(name: 'Tubes', itemunitcode: 07)



Item.create!(name: 'Piriton'unit_id: 1, current_stock: 20, in_stock: 1, initial_stock: 20)
Item.create!(name: 'Panadol'unit_id: 3, current_stock: 50, in_stock: 1, initial_stock: 50)
Item.create!(name: 'Eno'unit_id: 3, current_stock: 40, in_stock: 1,initial_stock: 40)

Itempurchaselog.create!(order_no: 'DN:304', order_date: '2022,9,17'_id: 1, supplier_id: 1, purchased_units: 20, price_per_unit: 10,  total_price: 200)
Itempurchaselog.create!(order_no: 'DNZ720', order_date: '2022,9,17'_id: 2, supplier_id: 1, purchased_units: 10, price_per_unit: 50,  total_price: 500)
Itempurchaselog.create!(order_no: 'DNZ725', order_date: '2022,9,17'_id: 3, supplier_id: 1, purchased_units: 20, price_per_unit: 20,  total_price: 400)

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

