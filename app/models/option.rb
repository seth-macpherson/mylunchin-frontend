class Option < ActiveRecord::Base
  # TYPES = {:soup => "Soup",:sandwich => "Sandwich",:salad => "Salad",:special => "Special",:other => "Other"}
  has_many :plate_options
  has_many :plates, :through => :plate_options

  has_many :selections
end
