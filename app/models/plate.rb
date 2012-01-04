class Plate < ActiveRecord::Base

  has_many :plate_variations
  has_many :variations, :through => :plate_variations

  has_many :order_items
end
