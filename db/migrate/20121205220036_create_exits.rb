class CreateExits < ActiveRecord::Migration
  def change
    create_table :exits do |t|
      t.date :data
      t.string :motiv
      t.references :pacient

      t.timestamps
    end
    add_index :exits, :pacient_id
  end
end
