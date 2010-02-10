class WeeksController < ProtectedController
  
  def new
    @week = Week.new(params[:day])
    @events = Event.all
  end
  
end
