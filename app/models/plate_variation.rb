class PlateVariation < ActiveRecord::Base
  belongs_to :plate
  belongs_to :variation
end
