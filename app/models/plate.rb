class Plate < ActiveRecord::Base
  has_many :options #
  has_many :order_items
end
