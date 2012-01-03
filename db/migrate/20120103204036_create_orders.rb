class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :order_type
      t.string :location

      t.timestamps
    end
  end
end
