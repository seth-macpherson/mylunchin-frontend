class CreatePlateVariations < ActiveRecord::Migration
  def up
    create_table :plate_variations, :id => false do |t|
      t.integer :plate_id
      t.integer :variation_id
    end

    add_index :plate_variations, [:plate_id, :variation_id], :unique => true
  end

  def down
    drop_table :plate_variations
  end
end
