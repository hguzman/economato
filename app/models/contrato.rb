# == Schema Information
#
# Table name: contratos
#
#  id                :integer          not null, primary key
#  numero            :string
#  fecha_contrato_at :date
#  valor             :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  valor_total       :decimal(, )      default(0.0)
#

class Contrato < ApplicationRecord
  has_many :consolidados
  validates :numero, :fecha_contrato_at, :valor, presence: true
  validates :numero, uniqueness: true

  def nombre_completo
    "#{numero} / #{fecha_contrato_at}"
  end
end
