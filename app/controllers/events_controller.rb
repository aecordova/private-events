class EventsController < ApplicationController
  
  def new;  end
  
  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.organized_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def index
    @all_events = Event.all
  end

  def event_params
    params.require(:event).permit(:name, :place, :date, :description)
  end
end
