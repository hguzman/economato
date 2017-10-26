class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :nombre
      t.string :contrato
      t.string :celular

      t.timestamps
    end
  end
end
