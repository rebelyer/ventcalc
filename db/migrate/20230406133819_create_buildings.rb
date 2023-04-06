class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :investor_name, null: false
      t.string :address, null: false
      t.integer :building_area, null: false
      t.integer :residents_number, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
