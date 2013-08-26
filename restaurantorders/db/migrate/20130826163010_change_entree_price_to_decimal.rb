class ChangeEntreePriceToDecimal < ActiveRecord::Migration
  def up
    change_table :entrees do |t|
      t.change :price, :decimal, :scale => 2
    end
  end

  def down
    change_table :entrees do |t|
      t.change :price, :float
    end
  end
end

