class AddTotalToDetalles < ActiveRecord::Migration[5.1]
  def change
    add_column :detalles, :valor_total, :decimal
  end
end
