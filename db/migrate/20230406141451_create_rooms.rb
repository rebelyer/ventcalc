class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.integer :type, null: false
      t.integer :residents_number, null: false
      t.float :area, null: false
      t.float :height, null: false
      t.integer :air_flow, null: false
      t.integer :air_direction, null: false

      t.timestamps
    end
  end
end
