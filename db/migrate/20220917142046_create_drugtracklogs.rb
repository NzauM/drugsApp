class CreateDrugtracklogs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugtracklogs do |t|
      t.integer :drug_id
      t.integer :former_stock
      t.string :drug_action
      t.integer :drugdistributionlog_id
      t.integer :drugpurchaselog_id

      t.timestamps
    end
  end
end
