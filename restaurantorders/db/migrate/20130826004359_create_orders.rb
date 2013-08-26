class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :dining_table_id
      t.float :total
      t.string :status

      t.timestamps
    end
  end
end
