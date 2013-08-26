class Order < ActiveRecord::Base
  attr_accessible :dining_table_id, :status, :total
  has_many :order_items
  belongs_to :dining_table
end
