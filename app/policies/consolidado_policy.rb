class ConsolidadoPolicy < ApplicationPolicy
  def entregar_productos?
    !record.entregada?
  end
end
