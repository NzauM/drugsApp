class CreateDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :drugunit_id
      t.integer :current_stock
      t.integer :in_stock
      t.integer :initial_stock

      t.timestamps
    end
  end
end
