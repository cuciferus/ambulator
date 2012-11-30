class RemoveDrugsReteta < ActiveRecord::Migration
  def up
    drop_table :drugs_reteta
  end

  def down
  end
end
