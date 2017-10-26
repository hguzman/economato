# == Schema Information
#
# Table name: productos
#
#  id          :integer          not null, primary key
#  descripcion :string
#  medida_id   :integer
#  valor       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :producto do
    descripcion "MyString"
    medida nil
    valor "9.99"
  end
end
