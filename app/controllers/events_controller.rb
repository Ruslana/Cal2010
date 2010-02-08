class EventsController < ProtectedController
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    @event.save!
  end
  
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    @event.update_attribute(params[:event])    
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end
  
end
