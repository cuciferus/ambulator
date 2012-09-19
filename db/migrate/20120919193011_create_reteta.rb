class CreateReteta < ActiveRecord::Migration
  def change
    create_table :reteta do |t|
      t.date :data
      t.references :medicamente
      t.references :retetar
      t.references :pacient

      t.timestamps
    end
    add_index :reteta, :medicamente_id
    add_index :reteta, :retetar_id
    add_index :reteta, :pacient_id
  end
end
