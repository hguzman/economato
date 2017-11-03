class AddIndexToDetalle < ActiveRecord::Migration[5.1]
  def change
    add_index :detalles, [:producto_id, :consolidado_id], unique: true
  end
end
