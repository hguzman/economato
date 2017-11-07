# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  nombre      :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :activity do
    nombre "MyString"
    description "MyText"
  end
end
