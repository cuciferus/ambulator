class ChangeNumeTypeFromFelAnalizas < ActiveRecord::Migration
  def up
    change_column :fel_analizas, :nume, :text
  end

  def down
    change_column :fel_analizas, :nume, :string
  end
end
