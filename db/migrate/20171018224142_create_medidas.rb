class CreateMedidas < ActiveRecord::Migration[5.1]
  def change
    create_table :medidas do |t|
      t.string :medida

      t.timestamps
    end
  end
end
