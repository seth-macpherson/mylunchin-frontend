require 'open-uri'
require 'json'

class HomeController < ApplicationController

  # before_filter :authenticate_user!
  
  def index
    set_tab :home
  end
  
  def about
    
  end
  
  def pending
    set_tab request.env['PATH_INFO'][1..-1]
    render "_pending", :layout => "layouts/generic"
  end

end
