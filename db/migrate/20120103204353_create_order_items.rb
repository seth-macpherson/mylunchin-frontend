class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :price
      t.integer :plate_id
      t.integer :selection_id

      t.timestamps
    end
  end
end
