class ChangeOrderTotalToDecimal < ActiveRecord::Migration
  def up
    change_table :orders do |t|
      t.change :total, :decimal, :scale => 2
    end
  end

  def down
    change_table :orders do |t|
      t.change :total, :float
    end
  end
end
