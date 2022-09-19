class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_ref
      t.string :supplier_name
      t.string :contact
      t.integer :paybill_number

      t.timestamps
    end
  end
end
