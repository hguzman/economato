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

class Teacher < ApplicationRecord
  has_and_belongs_to_many :fichas
  has_many :consolidados
  validates :nombre, :contrato, :celular, presence: true
  validates :nombre, uniqueness: true
  accepts_nested_attributes_for :fichas
end
