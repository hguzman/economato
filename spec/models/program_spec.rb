# == Schema Information
#
# Table name: programs
#
#  id         :integer          not null, primary key
#  codigo     :string
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Program, type: :model do

  describe "Presencia de campos" do
    it {should validate_presence_of(:codigo)}
    it {should validate_presence_of(:nombre)}
  end

  describe "Registro unico" do
    it {should validate_uniqueness_of(:codigo)}
  end

  describe "asociaciones" do
    it {should have_many(:fichas)}
  end

end
