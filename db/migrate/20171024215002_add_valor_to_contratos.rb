class AddValorToContratos < ActiveRecord::Migration[5.1]
  def change
    add_column :contratos, :valor_total, :decimal, default: 0
  end
end
