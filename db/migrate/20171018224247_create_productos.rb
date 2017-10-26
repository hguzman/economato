class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :descripcion
      t.references :medida, foreign_key: true
      t.decimal :valor

      t.timestamps
    end
  end
end
