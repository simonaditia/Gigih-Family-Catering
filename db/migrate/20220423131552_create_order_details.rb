class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :order_id
      t.string :menu_id
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
