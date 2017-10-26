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

require 'rails_helper'

RSpec.describe Producto, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
