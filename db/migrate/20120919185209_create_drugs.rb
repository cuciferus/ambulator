class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :nume
      t.string :dci
      t.float :cantitate
      t.string :cod
      t.string :diagnostic

      t.timestamps
    end
  end
end
