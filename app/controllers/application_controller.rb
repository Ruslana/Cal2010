class ApplicationController < ActionController::Base
  
  helper :all 
  protect_from_forgery 
  filter_parameter_logging :password
  
  def today
    [Time.now.strftime("%B"), Time.now]
  end
  
  helper_method :today
  
end
