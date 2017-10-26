class AddFichaToFichas < ActiveRecord::Migration[5.1]
  def change
    add_column :fichas, :ficha, :string
  end
end
