class WeeksController < ApplicationController
  
  def new
    @week = Week.new(params[:day])
  end
  
end
