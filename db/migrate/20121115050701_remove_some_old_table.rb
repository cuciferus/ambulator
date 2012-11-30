class RemoveSomeOldTable < ActiveRecord::Migration
  def up
    drop_table :drug_comercials
    drop_table :drug_concentrations
  end

  def down
  end
end
