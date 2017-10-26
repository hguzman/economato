class AddValorToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_column :consolidados, :valor_total, :decimal
  end
end
