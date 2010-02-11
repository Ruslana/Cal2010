class EventsController < ProtectedController
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    @event.save!
    redirect_to new_calendar_path
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
    if @event.update_attributes(params[:event])    
      redirect_to new_calendar_path
    else
      redirect_to edit_event_path(@event)
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to new_calendar_path
  end
  
end
