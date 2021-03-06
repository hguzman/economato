# == Schema Information
#
# Table name: consolidados
#
#  id                 :integer          not null, primary key
#  teacher_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  ficha_id           :integer
#  contrato_id        :integer
#  entregada?         :boolean
#  valor_total        :decimal(, )
#  activity_id        :integer
#  aasm_state         :string
#  envio_proveedor_at :datetime
#  recibida_sena_at   :datetime
#  fecha_cierre_at    :datetime
#

FactoryGirl.define do
  factory :consolidado do
    teacher nil
  end
end
