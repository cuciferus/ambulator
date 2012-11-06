class AddStuffToReteta < ActiveRecord::Migration
  def change
    add_column :reteta, :nr_zile, :integer
    add_column :reteta, :seire, :string
  end
end
