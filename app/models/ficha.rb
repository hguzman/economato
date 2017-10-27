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

class Ficha < ApplicationRecord
  belongs_to :program
  has_and_belongs_to_many :teachers
  # has_many :fichas
  has_many :consolidados
  validates :ficha, uniqueness: true
  validates :fecha_inicio_at, :fecha_fin_at, :ficha, presence: true

  def ficha_programa
    "#{ficha} - #{program.nombre}"
  end
end
