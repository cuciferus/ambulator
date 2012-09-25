class RemoveMedicamenteIdFromReteta < ActiveRecord::Migration
  def up
    remove_column :reteta, :medicamente_id

  end

  def down
  end
end
