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
    skip 'test later'
  end

  test 'should not save a floor without a position' do
    skip 'test later'
  end

  test 'shoult not save a floor without a building' do
    skip 'test later'
  end
end
