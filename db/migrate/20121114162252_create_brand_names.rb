class CreateBrandNames < ActiveRecord::Migration
  def change
    create_table :brand_names do |t|
      t.string :name
      t.references :drug

      t.timestamps
    end
  end
end
