class RemoveAttributesFromDrugs < ActiveRecord::Migration
  def up
    remove_column :drugs, :nume
    remove_column :drugs, :doza
  end

  def down
  end
end
