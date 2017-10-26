class CreateDetalles < ActiveRecord::Migration[5.1]
  def change
    create_table :detalles do |t|
      t.references :producto, foreign_key: true
      t.decimal :cantidad
      t.references :consolidado, foreign_key: true

      t.timestamps
    end
  end
end
