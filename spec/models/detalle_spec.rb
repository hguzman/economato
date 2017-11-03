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

require 'rails_helper'

RSpec.describe Detalle, type: :model do
  describe "Registro unico" do
    before { FactoryGirl.build(:producto) }
    it {should validate_uniqueness_of(:producto).scoped_to(:consolidado).ignoring_case_sensitivity}
  end
end
