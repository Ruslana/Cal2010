class WeeksController < ProtectedController
  
  def new
    @week = Week.new(params[:day])
  end
  
end
