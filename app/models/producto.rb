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

class Producto < ApplicationRecord
  belongs_to :medida

  def producto_medida
    "#{descripcion} - #{medida.medida}"
  end
end
