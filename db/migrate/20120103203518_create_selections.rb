class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :name
      t.integer :variation_id
      t.boolean :defaulted, :default => false
      t.timestamps
    end
  end
end
