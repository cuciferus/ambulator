class AddAttributesToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :brand_name, :string
    add_column :drugs, :concentration, :float
    add_column :drugs, :si, :string
    remove_column :drugs, :brand_name_id
    remove_column :drugs, :concentration_id
    #remove_index :drugs, :name => "index_drugs_on_brand_name_id"
    #remove_index :drugs, :name => "index_drugs_on_concentration_id"
  end
end
