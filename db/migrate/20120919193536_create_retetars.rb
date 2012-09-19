class CreateRetetars < ActiveRecord::Migration
  def change
    create_table :retetars do |t|
      t.references :medic
      t.string :tip

      t.timestamps
    end
    add_index :retetars, :medic_id
  end
end
