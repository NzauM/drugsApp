class CreateDrugpurchaselogs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugpurchaselogs do |t|
      t.string :order_no
      t.string :order_date
      t.integer :drug_id
      t.integer :supplier_id
      t.integer :purchased_units
      t.integer :price_per_unit
      t.integer :c

      t.timestamps
    end
  end
end
