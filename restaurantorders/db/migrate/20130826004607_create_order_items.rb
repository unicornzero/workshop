class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :chair_number
      t.integer :entree_id

      t.timestamps
    end
  end
end
