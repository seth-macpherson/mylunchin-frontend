class Variation < ActiveRecord::Base
  has_many :plate_variations
  has_many :plates, :through => :plate_variations
  has_many :selections
end
