class AddSiToConcentration < ActiveRecord::Migration
  def change
    add_column :concentrations, :si, :integer
  end
end
