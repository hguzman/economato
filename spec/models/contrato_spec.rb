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

require 'rails_helper'

RSpec.describe Contrato, type: :model do

  describe "Presencia de campos" do
    it {should validate_presence_of(:numero)}
    it {should validate_presence_of(:fecha_contrato_at)}
    it {should validate_presence_of(:valor)}
  end

  describe "registro unico" do
    it {should validate_uniqueness_of(:numero)}
  end

end
