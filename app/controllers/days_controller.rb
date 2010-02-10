class DaysController < ProtectedController
  
  def new
    @day = Day.new(params[:date])
    @events = Event.all
  end
  
end
