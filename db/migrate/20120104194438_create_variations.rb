class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :name
      t.string :label
      t.boolean :choose_one, :default => true

      t.timestamps
    end
  end
end
