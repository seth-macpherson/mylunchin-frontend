class Option < ActiveRecord::Base
  belongs_to :plate
  has_many :selections
end
