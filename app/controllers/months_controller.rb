class MonthsController < ProtectedController
  
  def new
    @month = Month.new(params[:mas])
  end
  
end
