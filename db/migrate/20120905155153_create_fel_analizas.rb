class CreateFelAnalizas < ActiveRecord::Migration
  def change
    create_table :fel_analizas do |t|
      t.string :nume
      t.string :unitate_masura
      t.string :valori_normale
      t.references :paraclinic

      t.timestamps
    end
    add_index :fel_analizas, :paraclinic_id
  end
end
