class AddEvidentaToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :evidenta, :boolean, :default=> true
    Pacient.update_all :evidenta => true
  end
end
