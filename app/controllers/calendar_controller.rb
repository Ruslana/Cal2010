class CalendarController < ProtectedController
  
  def new
    @calendar = Calendar.new
  end
  
end
