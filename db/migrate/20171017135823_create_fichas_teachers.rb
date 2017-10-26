class CreateFichasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :fichas_teachers, id: false do |t|
      t.references :ficha, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
