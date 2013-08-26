class OrderItem < ActiveRecord::Base
  attr_accessible :chair_number, :entree_id, :order_id
  belongs_to :order, :touch=>true
end
