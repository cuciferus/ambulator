class RenameCantitateToDoza < ActiveRecord::Migration
  def up
    rename_column :drugs, :cantitate, :doza
  end

  def down
    rename_column :drugs, :doza, :cantitate
  end
end
