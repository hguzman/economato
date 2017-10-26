class CreateConsolidados < ActiveRecord::Migration[5.1]
  def change
    create_table :consolidados do |t|
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
