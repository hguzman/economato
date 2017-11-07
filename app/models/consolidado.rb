# == Schema Information
#
# Table name: consolidados
#
#  id          :integer          not null, primary key
#  teacher_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ficha_id    :integer
#  contrato_id :integer
#  entregada?  :boolean
#  valor_total :decimal(, )
#  activity_id :integer
#

class Consolidado < ApplicationRecord
  belongs_to :teacher
  belongs_to :ficha
  belongs_to :contrato
  belongs_to :activity
  has_many :detalles, dependent: :destroy
  accepts_nested_attributes_for :detalles, allow_destroy: true
  validates :teacher, :ficha, :contrato,  presence: true

  before_save :update_valor_total

  def actualiza_valor
    self[:valor_total] = detalles.sum(:valor_total)
    valor_total = detalles.sum(:valor_total)
    self[:entregada?] = true
    contrato.increment(:valor_total, self[:valor_total])
    contrato.save
  end

  def sumatoria
    detalles.sum(:valor_total)
  end

  private

  def update_valor_total
    self[:valor_total] = detalles.sum(:valor_total)
  end


end
