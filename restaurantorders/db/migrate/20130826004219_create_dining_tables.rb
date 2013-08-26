class CreateDiningTables < ActiveRecord::Migration
  def change
    create_table :dining_tables do |t|
      t.integer :table_number
      t.integer :seats
      t.string :status

      t.timestamps
    end
  end
end
