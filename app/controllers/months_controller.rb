class MonthsController < ApplicationController
  
  def new
    @month = Month.new(params[:mas])
  end
  
end
