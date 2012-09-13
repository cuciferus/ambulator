class RemoveNumeFromParaclinic < ActiveRecord::Migration
  def up
    remove_column :paraclinics, :nume
  end

  def down
  end
end
