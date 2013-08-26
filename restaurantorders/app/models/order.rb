class Order < ActiveRecord::Base
  attr_accessible :dining_table_id, :status, :total, :set_total
  has_many :order_items
  accepts_nested_attributes_for :order_items

  def set_total
    @order = self
    if @order.order_items.any?
      cost = 0
      @order.order_items.each do |item|
        cost += Entree.find(item.entree_id).price
      end
      @order.update_attribute(:total, cost)
      return cost
    end  
  end
end
