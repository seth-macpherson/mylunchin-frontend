class Plate < ActiveRecord::Base

  has_many :plates_variation
  has_many :variations, :through => :plates_variation

  has_many :order_items
end
