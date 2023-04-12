# == Schema Information
#
# Table name: buildings
#
#  id               :bigint           not null, primary key
#  address          :string           not null
#  building_area    :integer          not null
#  investor_name    :string           not null
#  residents_number :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_buildings_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class BuildingTest < ActiveSupport::TestCase
  test 'should not save a building without an address' do
    user = build(:user)
    building = Building.new
    building.building_area = 192
    building.investor_name = 'Jacob Stellar'
    building.residents_number = 4
    building.user = user
    assert_not building.save, 'Saved the building without an address'
  end

  test 'should not save a building without a building area' do
    user = build(:user)
    building = Building.new
    building.address = '30-310 Wrocław, ul. Komandosów 14/12'
    building.investor_name = 'Jacob Stellar'
    building.residents_number = 4
    building.user = user
    assert_not building.save, 'Saved the building without a building area'
  end

  test 'should not save a building without an investor name' do
    user = build(:user)
    building = Building.new
    building.address = '30-310 Wrocław, ul. Komandosów 14/12'
    building.building_area = 192
    building.residents_number = 4
    building.user = user
    assert_not building.save, 'Saved the building without an investor name'
  end

  test 'should not save a building without residents number' do
    user = build(:user)
    building = Building.new
    building.address = '30-310 Wrocław, ul. Komandosów 14/12'
    building.building_area = 192
    building.investor_name = 'Jacob Stellar'
    building.user = user
    assert_not building.save, 'Saved the building without residents number'
  end

  test 'should not save a building without a user' do
    building = Building.new
    building.address = '30-310 Wrocław, ul. Komandosów 14/12'
    building.building_area = 192
    building.investor_name = 'Jacob Stellar'
    building.residents_number = 4
    assert_not building.save, 'Saved the building without a user'
  end
end
