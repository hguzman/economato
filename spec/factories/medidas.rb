# == Schema Information
#
# Table name: medidas
#
#  id         :integer          not null, primary key
#  medida     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :medida do
    medida "MyString"
  end
end
