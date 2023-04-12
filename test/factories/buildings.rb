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

FactoryBot.define do
  factory :building do
    sequence(:address){ |n| "ul. Krakowska #{n}, 30-315 Kraków" }
    sequence(:building_area) { |n| 230 + n }
    investor_name { 'Janusz Kowalski' }
    sequence(:residents_number) { |n| 4 + n }
    user
  end
end
