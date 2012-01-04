class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :name
      t.integer :variation_id
      t.timestamps
    end
  end
end
