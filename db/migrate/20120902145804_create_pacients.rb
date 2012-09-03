class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      t.string :cnp
      t.text :adresa
      t.date :debut_diabet
      t.string :focad

      t.timestamps
    end
  end
end
