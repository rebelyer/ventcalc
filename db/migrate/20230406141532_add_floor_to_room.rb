class AddFloorToRoom < ActiveRecord::Migration[7.0]
  def change
    add_reference :rooms, :floor, null: false, foreign_key: true
  end
end
