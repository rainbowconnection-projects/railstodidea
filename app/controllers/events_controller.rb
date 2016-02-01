class EventsController < ApplicationController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @event = Event.where(id: params[:id]).first
    @gallery = @event.try(:event_gallery).try(:event_photos)
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to controller: 'admin', action: 'events'
    end
  end

  private
  def event_params
    params.require(:event).permit(:name,:description,:photo,:date)
  end
end
