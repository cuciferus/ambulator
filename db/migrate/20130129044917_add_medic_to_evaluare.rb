class AddMedicToEvaluare < ActiveRecord::Migration
  def change
    add_column :evaluares, :medic_id, :integer
    add_index :evaluares, :medic_id
  end
end
