class ChangeAssociationDrugDirection < ActiveRecord::Migration
  def up
    remove_column :brand_names, :drug_id
    remove_column :concentrations, :drug_id
    remove_column :concentrations, :drug_id
    add_column :drugs, :brand_name_id, :integer
    add_column :drugs, :concentration_id, :integer
    add_index :drugs, :brand_name_id, :name =>"index_drugs_on_brand_name_id"
    add_index :drugs, :concentration_id, :name =>"index_drugs_on_concentration_id"
  end

  def down
  end
end
