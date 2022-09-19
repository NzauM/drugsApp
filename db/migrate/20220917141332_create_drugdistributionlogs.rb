class CreateDrugdistributionlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugdistributionlogs do |t|
      t.integer :drug_id
      t.integer :removed_units
      t.integer :remaining_units
      t.integer :department_id
      t.string :remarks

      t.timestamps
    end
  end
end
