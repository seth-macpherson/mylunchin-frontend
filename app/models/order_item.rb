class OrderItem < ActiveRecord::Base
  has_one :plate
  has_many :selections
end
