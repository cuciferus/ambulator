class RenameRetetaColumn < ActiveRecord::Migration
  def up
    rename_column :reteta, :seire, :serie
  end

  def down
  end
end
