class EventsController < ApplicationController
  before_action :logged_in_user, except: %i[index show]
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(events_params)
    if @event.save
      flash[:success] = 'Event created successfully'
      redirect_to @event
    else
      render :new
    end
  end

  def index
    @upcoming_events = Event.upcoming.order(date: :desc)
    @past_events = Event.past.order(date: :desc)
  end

  def show
    @event = Event.find(params[:id])
    @attendees = Invitation.where(event_id: @event.id)
  end

  private

  def events_params
    params.require(:event).permit(:title, :description, :date, :location)
  end
end
