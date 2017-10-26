class AddObservacionToDetalles < ActiveRecord::Migration[5.1]
  def change
    add_column :detalles, :observacion, :string
  end
end
