class CreatePlateOptions < ActiveRecord::Migration
  def up
    create_table :plate_options, :id => false do |t|
      t.integer :plate_id
      t.integer :option_id
    end

    add_index :plate_options, [:plate_id, :option_id], :unique => true
  end

  def down
    drop_table :plate_options
  end
end
