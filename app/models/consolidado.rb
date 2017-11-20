# == Schema Information
#
# Table name: consolidados
#
#  id                 :integer          not null, primary key
#  teacher_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  ficha_id           :integer
#  contrato_id        :integer
#  entregada?         :boolean
#  valor_total        :decimal(, )
#  activity_id        :integer
#  aasm_state         :string
#  envio_proveedor_at :datetime
#  recibida_sena_at   :datetime
#  fecha_cierre_at    :datetime
#

class Consolidado < ApplicationRecord
  include AASM

  aasm do
    state :creada, :initial => true
    state :proveedor
    state :aceptada
    state :cerrada

    event :enviar, :after_commit => :actualizar_fecha_envio do
      transitions :from => :creada, :to => :proveedor
    end

    event :recibir, :after_commit => :actualizar_fecha_recibido do
      transitions :from => :proveedor, :to => :aceptada
    end

    event :cerrar, :after_commit => :actualizar_fecha_cierre do
      transitions :from => :aceptada, :to => :cerrada
    end

  end


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

  def actualizar_fecha_envio
    puts "Entro a actualizar"
    update_attribute(:envio_proveedor_at, Time.now)
  end

  def actualizar_fecha_recibido
    update_attribute(:recibida_sena_at, Time.now)
  end

  def actualizar_fecha_cierre
    update_attribute(:fecha_cierre_at, Time.now)
    contrato.increment(:valor_total, self[:valor_total])
    contrato.save
  end


end
