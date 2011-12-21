class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.string :description
      t.string :chef
      t.boolean :vegitarean
      t.boolean :gluten_free
      t.decimal :price

      t.timestamps
    end
  end
end
