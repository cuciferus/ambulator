class AddFieldsToRetetars < ActiveRecord::Migration
  def change
    add_column :retetars, :serie, :string
    add_column :retetars, :nr_prima_reteta, :string
    add_column :retetars, :nr_ultima_reteta, :string
  end
end
