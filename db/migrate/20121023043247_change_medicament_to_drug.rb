class ChangeMedicamentToDrug < ActiveRecord::Migration
  def up
    rename_column :line_drugs, :medicament_id, :drug_id
    rename_index :line_drugs, :medicament_id, :drug_id
  end

  def down
  end
end
