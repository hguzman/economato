class AddAasmStateToConsolidados < ActiveRecord::Migration[5.1]
  def change
    add_column :consolidados, :aasm_state, :string
  end
end
