# == Schema Information
#
# Table name: consolidados
#
#  id          :integer          not null, primary key
#  teacher_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ficha_id    :integer
#  contrato_id :integer
#  entregada?  :boolean
#  valor_total :decimal(, )
#

require 'rails_helper'

RSpec.describe Consolidado, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
