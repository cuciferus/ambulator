class CreateIesires < ActiveRecord::Migration
  def change
    create_table :iesires do |t|
      t.date :data
      t.string :motiv
      t.references :pacient

      t.timestamps
    end
    add_index :iesires, :pacient_id
  end
end
