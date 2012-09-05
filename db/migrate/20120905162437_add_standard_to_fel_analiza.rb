class AddStandardToFelAnaliza < ActiveRecord::Migration
  def change
    add_column :fel_analizas, :standard, :boolean
  end
end
