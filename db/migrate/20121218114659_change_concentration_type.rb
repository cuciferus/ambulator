class ChangeConcentrationType < ActiveRecord::Migration
  def up
    change_column :concentrations, :concentration, :integer
  end

  def down
  end
end
