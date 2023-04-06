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
class Floor < ApplicationRecord
  belongs_to :building
  has_many :rooms

  validates :name, :position, presence: true
end
