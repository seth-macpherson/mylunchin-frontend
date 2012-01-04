class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :plate_id
      t.integer :order_id
      t.text    :description
      t.decimal :price, :default => 0.00, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
