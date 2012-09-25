class CreateDrugsReteta < ActiveRecord::Migration
  def change
    create_table :drugs_reteta do |t|
      t.references :retetum
      t.references :drug
      t.string :cantitate

      t.timestamps
    end
    add_index :drugs_reteta, :retetum_id
    add_index :drugs_reteta, :drug_id
  end
end
