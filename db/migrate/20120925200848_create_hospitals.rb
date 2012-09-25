class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :nume
      t.string :strada
      t.string :sector
      t.string :oras
      t.string :contract
      t.references :medic

      t.timestamps
    end
    add_index :hospitals, :medic_id
  end
end
