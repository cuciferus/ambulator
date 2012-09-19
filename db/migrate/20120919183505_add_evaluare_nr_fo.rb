class AddEvaluareNrFo < ActiveRecord::Migration
  def up
    add_column :evaluares, :nr_fo, :string
  end

  def down
  end
end
