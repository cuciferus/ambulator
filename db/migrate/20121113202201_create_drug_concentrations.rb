class CreateDrugConcentrations < ActiveRecord::Migration
  def change
    create_table :drug_concentrations do |t|
      t.string :concentration
      t.references :drug

      t.timestamps
    end
    add_index :drug_concentrations, :drug_id
  end
end
