class EventsController < ApplicationController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @event = Event.where(id: params[:id]).first
    @gallery = @event.try(:event_gallery).try(:event_photos)
  end
end
