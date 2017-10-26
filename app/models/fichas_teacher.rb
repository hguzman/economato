# == Schema Information
#
# Table name: fichas_teachers
#
#  ficha_id   :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FichasTeacher < ApplicationRecord
  belongs_to :ficha
  belongs_to :teacher
  validates :ficha, :teacher, presence: true

  validates :ficha_id, uniqueness: { scope: :teacher_id, message: "No se puede repetir la asociación"}
end
