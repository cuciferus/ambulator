class CorrectReferencesLineDrug < ActiveRecord::Migration
  def up
    remove_index :line_drugs, :pacient_id
    remove_column :line_drugs, :pacient_id
    add_column :line_drugs, :medicament_id, :integer
    add_index :line_drugs, :medicament_id
  end

  def down
  end
end
