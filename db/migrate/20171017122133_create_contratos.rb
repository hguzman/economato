class CreateContratos < ActiveRecord::Migration[5.1]
  def change
    create_table :contratos do |t|
      t.string :numero
      t.date :fecha_contrato_at
      t.decimal :valor

      t.timestamps
    end
  end
end
