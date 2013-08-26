class DiningTable < ActiveRecord::Base
  attr_accessible :seats, :status, :table_number
  has_many :orders
end
