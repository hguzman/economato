class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
