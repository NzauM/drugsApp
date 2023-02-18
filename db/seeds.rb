# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cheese.create!(name: 'Cheddar', price: 3, is_best_seller: true)
Cheese.create!(name: 'Pepper Jack', price: 4, is_best_seller: true)
Cheese.create!(name: 'Limburger', price: 8, is_best_seller: false)


Drugunit.create(name: 'DBA Drugs', drugunitcode: 32)
Drugunit.create(name: 'Expectorants', drugunitcode: 37)
Drugunit.create(name: 'Essentials', drugunitcode: 26)

Supplier.create!(supplier_ref: 'DCR56', supplier_name: 'AGAKHAN SUPPLIERS', contact: '0798567890', paybill_number: 890765)

Drug.create!(name: 'Piriton', drugunit_id: 1, current_stock: 20, in_stock: 1, initial_stock: 20)
Drug.create!(name: 'Panadol', drugunit_id: 3, current_stock: 50, in_stock: 1, initial_stock: 50)
Drug.create!(name: 'Eno', drugunit_id: 3, current_stock: 40, in_stock: 1,initial_stock: 40)

Drugpurchaselog.create!(order_no: 'DN:304', order_date: '2022,9,17', drug_id: 1, supplier_id: 1, purchased_units: 20, price_per_unit: 10)
Drugpurchaselog.create!(order_no: 'DNZ720', order_date: '2022,9,17', drug_id: 2, supplier_id: 1, purchased_units: 10, price_per_unit: 50)
Drugpurchaselog.create!(order_no: 'DNZ725', order_date: '2022,9,17', drug_id: 3, supplier_id: 1, purchased_units: 20, price_per_unit: 20)

# Drugdistributionlog.create(drug_id: 1, )

# Drugtracklog.create!(drug_id: 1, drug_action:'initial', drugdistributionlog_id: nil, drugpurchaselog_id: nil)
# Drugtracklog.create!(drug_id: 2, drug_action:'initial', drugdistributionlog_id: nil, drugpurchaselog_id: nil)
# Drugtracklog.create!(drug_id: 3, drug_action:'initial', drugdistributionlog_id: 0, drugpurchaselog_id: nil)

Department.create!(name: "Opthomology", rep: "Wanjohi Mugo")
Department.create!(name: "Dermatology", rep: "Wanja Kihi")
Department.create!(name: "Pharmacy", rep: "Doc Daktari")


