# == Schema Information
#
# Table name: fichas_teachers
#
#  ficha_id   :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe FichasTeacher, type: :model do

  describe "Validaciones" do
    before { FactoryGirl.build(:fichas_teachers) }

    it {should validate_presence_of(:teacher)}
    it {should validate_presence_of(:ficha)}
    it {should validate_uniqueness_of(:ficha_id).scoped_to(:teacher_id)}
  end

  describe "asociaciones" do
    it {should belong_to(:ficha)}
    it {should belong_to(:teacher)}
  end

end
