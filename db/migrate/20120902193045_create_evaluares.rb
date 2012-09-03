class CreateEvaluares < ActiveRecord::Migration
  def change
    create_table :evaluares do |t|
      t.date :data
      t.text :diagnostice
      t.text :recomandari
      t.references :pacient

      t.timestamps
    end
    add_index :evaluares, :pacient_id
  end
end
