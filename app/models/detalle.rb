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

class Detalle < ApplicationRecord
  belongs_to :producto
  belongs_to :consolidado

  validates :producto, :cantidad, presence: true
  validates :producto, uniqueness: { scope: :consolidado, message: "Producto ya esta registrado en el consolidado"}

  before_save :actualiza_valor

  private
  
  def actualiza_valor
    self[:valor_total] = cantidad * producto.valor
  end
end
