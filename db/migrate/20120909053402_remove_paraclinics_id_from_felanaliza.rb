class RemoveParaclinicsIdFromFelanaliza < ActiveRecord::Migration
  def up
    remove_column :fel_analizas, :paraclinic_id
    add_column :paraclinics, :fel_analiza_id, :integer
    add_index :paraclinics, :fel_analiza_id, :name =>"index_paraclinic_on_fel_analiza_id"
  end

  def down
  end
end
