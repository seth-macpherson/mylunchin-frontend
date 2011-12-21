require 'open-uri'
require 'json'

class HomeController < ApplicationController

  # before_filter :authenticate_user!
  
  def index
    @plates = Plate.all
    set_tab :home
  end
  
  def about
    
  end
  
  def seasonal
    
  end
  
  def pending

  end

end
