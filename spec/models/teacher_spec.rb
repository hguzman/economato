# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  nombre     :string
#  contrato   :string
#  celular    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Teacher, type: :model do

  describe "Validaciones" do
    it {should validate_uniqueness_of(:nombre)}
    it {should validate_presence_of(:nombre)}
    it {should validate_presence_of(:contrato)}
    it {should validate_presence_of(:celular)}

  end

  describe "asociaciones" do
    it {should have_and_belong_to_many(:fichas)}
  end


end
