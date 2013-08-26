class Order < ActiveRecord::Base
  attr_accessible :dining_table_id, :status, :total
  has_many :order_items
  accepts_nested_attributes_for :order_items
end
