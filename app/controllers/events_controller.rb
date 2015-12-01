class EventsController < ApplicationController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to controller: 'admin', action: 'events'
    end
  end

  private
  def event_params
    params.require(:event).permit(:event_name,:description,:photo,:date)
  end
end
