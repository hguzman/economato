class AddFechasToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_column :consolidados, :envio_proveedor_at, :datetime
    add_column :consolidados, :recibida_sena_at, :datetime
    add_column :consolidados, :fecha_cierre_at, :datetime
  end
end
