class ChangeFelAnalizaSet < ActiveRecord::Migration
  def up
    remove_column :fel_analizas, :standard
    add_column :fel_analizas, :set_grup, :string
  end

  def down
  end
end
