# == Schema Information
#
# Table name: fichas
#
#  id              :integer          not null, primary key
#  program_id      :integer
#  fecha_inicio_at :date
#  fecha_fin_at    :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ficha           :string
#

require 'rails_helper'

RSpec.describe Ficha, type: :model do

  describe "Validaciones" do
    it {should validate_uniqueness_of(:ficha)}
    it {should validate_presence_of(:ficha)}
    it {should validate_presence_of(:fecha_inicio_at)}
    it {should validate_presence_of(:fecha_fin_at)}

  end

  describe "asociaciones" do
    it {should belong_to(:program)}
    it {should have_and_belong_to_many(:teachers)}
  end


end
