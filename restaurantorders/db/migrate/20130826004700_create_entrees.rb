class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
