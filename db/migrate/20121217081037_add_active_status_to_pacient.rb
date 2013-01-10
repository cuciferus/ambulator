class AddActiveStatusToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :active, :boolean, :default => true
  end
end
