class CalendarController < ProtectedController
  
  def index
    @calendar = Calendar.new
  end
  
end
