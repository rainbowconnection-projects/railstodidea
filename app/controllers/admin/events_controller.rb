class Admin::EventsController < AdminController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 6)
  end
end