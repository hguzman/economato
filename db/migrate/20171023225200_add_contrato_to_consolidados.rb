class AddContratoToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_reference :consolidados, :contrato, foreign_key: true
    add_column :consolidados, :entregada?, :boolean
  end
end
