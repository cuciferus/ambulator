class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
      t.string :nume
      t.string :prenume
      t.string :cod_parafa

      t.timestamps
    end
  end
end
