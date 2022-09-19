class CreateDrugunits < ActiveRecord::Migration[7.0]
  def change
    create_table :drugunits do |t|
      t.string :name
      t.integer :drugunitcode

      t.timestamps
    end
  end
end
