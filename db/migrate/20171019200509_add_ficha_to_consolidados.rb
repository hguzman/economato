class AddFichaToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_reference :consolidados, :ficha, foreign_key: true
  end
end
