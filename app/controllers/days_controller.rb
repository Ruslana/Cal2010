class DaysController < ApplicationController
  
  def new
    @day = Day.new(params[:date])
  end
  
end
