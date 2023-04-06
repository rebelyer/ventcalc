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
require "test_helper"

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
