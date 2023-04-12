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
FactoryBot.define do
  factory :floor do
    sequence(:name) { |n| "floor_#{n}" }
    sequence(:position) { |n| n }
    building
  end
end
