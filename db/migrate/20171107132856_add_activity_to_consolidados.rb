class AddActivityToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_reference :consolidados, :activity, foreign_key: true
  end
end
