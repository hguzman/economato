class CreateFichas < ActiveRecord::Migration[5.1]
  def change
    create_table :fichas do |t|
      t.references :program, foreign_key: true
      t.date :fecha_inicio_at
      t.date :fecha_fin_at

      t.timestamps
    end
  end
end
