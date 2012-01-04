class Plate < ActiveRecord::Base
  has_many :plate_options
  has_many :options, :through => :plate_options

  has_many :order_items
end
