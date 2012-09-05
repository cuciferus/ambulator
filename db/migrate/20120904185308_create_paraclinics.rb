class CreateParaclinics < ActiveRecord::Migration
  def change
    create_table :paraclinics do |t|
      t.string :nume
      t.float :valoare
      t.references :evaluare

      t.timestamps
    end
    add_index :paraclinics, :evaluare_id
  end
end
