# == Schema Information
#
# Table name: rooms
#
#  id               :bigint           not null, primary key
#  air_direction    :integer          not null
#  air_flow         :integer          not null
#  area             :float            not null
#  height           :float            not null
#  name             :string           not null
#  residents_number :integer          not null
#  type             :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  floor_id         :bigint           not null
#
# Indexes
#
#  index_rooms_on_floor_id  (floor_id)
#
# Foreign Keys
#
#  fk_rails_...  (floor_id => floors.id)
#
class Room < ApplicationRecord
  belongs_to :floor

  validates :air_direction, :air_flow, :area, :height, :name, :residents_number, :type, presence: true

  enum air_direction: {
    exhaust: 0,
    mixed: 1,
    supply: 2
  }

  enum type: { 
    # Exhaust types:
    generic_exhaust: 0,
    open_kitchen_with_electric_stove: 1,
    dining_room_exhaust: 2,
    open_kitchen_with_gas_stove: 3,
    bathroom: 4,
    restroom: 5,
    hallway: 6,
    utility_room: 7,
    walkin_closet: 8,
    vestibule: 9,
    recreation_room: 10,
    laundry: 11,
    pantry: 12,
    # Mixed type:
    boiler_room_with_gas_boiler_or_heat_pump: 13,
    # Supply types:
    generic_supply: 14,
    cabinet: 15,
    bedroom: 16,
    living_room: 17,
    dining_room_supply: 18,
    family_room: 19
   }
end



