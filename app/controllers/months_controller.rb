class MonthsController < ProtectedController
  
  def new
    @month = Month.new(params[:mas])
    @events = Event.all
  end

end
