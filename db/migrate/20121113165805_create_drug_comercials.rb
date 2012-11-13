class CreateDrugComercials < ActiveRecord::Migration
  def change
    create_table :drug_comercials do |t|
      t.string :nume
      t.references :drug

      t.timestamps
    end
    add_index :drug_comercials, :drug_id
  end
end
