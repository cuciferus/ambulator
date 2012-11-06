class AddTerminatToRetetar < ActiveRecord::Migration
  def change
    add_column :retetars, :terminat, :boolean
  end
end
