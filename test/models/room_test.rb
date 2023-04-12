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
  test 'should not save a room without an air direction' do
    skip 'test later'
  end

  test 'should not save a room without an air flow' do
    skip 'test later'
  end

  test 'should not save a room without an area' do
    skip 'test later'
  end

  test 'should not save a room without a height' do
    skip 'test later'
  end

  test 'should not save a room without a name' do
    skip 'test later'
  end

  test 'should not save a room without residents number' do
    skip 'test later'
  end

  test 'should not save a room without a type' do
    skip 'test later'
  end

  test 'should not save a room without a floor' do
    skip 'test later'
  end

  test 'should calculate a room volume' do
    skip 'test later'
  end

  test 'should calculate a minimal air supply for a two people bedroom' do
    skip 'test later'
  end

  test 'should calculate a minimal air exhaust for a restroom' do
    skip 'test later'
  end

  test 'should calculate a minimal air demand for a boiler room with a heat pump' do
    skip 'test later'
  end
end
