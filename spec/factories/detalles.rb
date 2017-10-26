# == Schema Information
#
# Table name: detalles
#
#  id             :integer          not null, primary key
#  producto_id    :integer
#  cantidad       :decimal(, )
#  consolidado_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  observacion    :string
#  valor_total    :decimal(, )
#

FactoryGirl.define do
  factory :detalle do
    producto nil
    cantidad "9.99"
    consolidado nil
  end
end
