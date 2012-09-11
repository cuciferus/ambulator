class ChangeColumnsForFelAnaliza < ActiveRecord::Migration
  def up
    remove_column :fel_analizas, :valori_normale
    add_column :fel_analizas, :valoare_minima, :float
    add_column :fel_analizas, :valoare_maxima, :float
  end

  def down
  end
end
