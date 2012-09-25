class CreateLineDrugs < ActiveRecord::Migration
  def change
    create_table :line_drugs do |t|
      t.integer :cantitate
      t.references :retetum
      t.references :pacient

      t.timestamps
    end
    add_index :line_drugs, :retetum_id
    add_index :line_drugs, :pacient_id
  end
end
