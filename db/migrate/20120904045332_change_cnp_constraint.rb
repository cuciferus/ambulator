class ChangeCnpConstraint < ActiveRecord::Migration
  def up
    change_column :pacients, :cnp, :string, :null => false, :length => 13
  end

  def down
  end
end
