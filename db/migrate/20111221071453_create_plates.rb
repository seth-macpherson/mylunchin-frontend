class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.string :description
      t.string :chef
      t.boolean :vegitarean, :default => false
      t.boolean :gluten_free, :default => false
      t.decimal :price, :default => 0.00, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
