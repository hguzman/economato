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

class Program < ApplicationRecord
  validates :codigo, :nombre, presence: true
  validates :codigo, uniqueness: true
  has_many :fichas
end
