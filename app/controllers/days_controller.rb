class DaysController < ProtectedController
  
  def new
    @day = Day.new(params[:date])
  end
  
end
