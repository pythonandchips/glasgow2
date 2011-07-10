class EventsController < ApplicationController
  def index
    @events = Event.find_all_by_verified(1)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.valid?
      EventMailer.new_event(@event).deliver
      redirect_to events_url, :notice => "Your event was created successful and will appear when varified by our admin"
    else
      render :action => "new"
    end
  end

end
