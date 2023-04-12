# == Schema Information
#
# Table name: floors
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  position    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :bigint           not null
#
# Indexes
#
#  index_floors_on_building_id  (building_id)
#
# Foreign Keys
#
#  fk_rails_...  (building_id => buildings.id)
#
require "test_helper"

class FloorTest < ActiveSupport::TestCase
  test 'should not save a floor without a name' do
    building = build(:building)
    floor = Floor.new
    floor.position = 1
    floor.building = building
    assert_not floor.save, 'Saved a floor without a name'
  end

  test 'should not save a floor without a position' do
    building = build(:building)
    floor = Floor.new
    floor.name = 'parter'
    floor.building = building
    assert_not floor.save, 'Saved a floor without a position'
  end

  test 'shoult not save a floor without a building' do
    floor = Floor.new
    floor.name = 'parter'
    floor.position = 1
    assert_not floor.save, 'Saved a floor without a building'
  end
end
