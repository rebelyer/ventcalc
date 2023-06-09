# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("user")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

# This model initially had no columns defined. If you add columns to the
# model remove the "{}" from the fixture names and add the columns immediately
# below each fixture, per the syntax in the comments below
#

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@email.com" }
    sequence(:password) { |n| "password_#{n}" }
    role { 'user' }

    trait :admin do
      role { 'admin' }
    end
  end
end
