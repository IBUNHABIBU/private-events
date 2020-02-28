class EventsController < ApplicationController
  before_action :logged_in_user, except: [:index, :show]
    def new 
        @events = Event.new
    end
    def create 
      @events = current_user.events.build(events_params)
      if @events.save
        flash[:success] = "Event created successfully"
        redirect_to @events
      else
        render :new
      end
    end
    def index 
      @upcoming_events = Event.upcoming.order(date: :desc)
      @past_events = Event.past.order(date: :desc)
    end
    def show
      @events = Event.find(params[:id])
      @attendees = Invitation.where(event_id: @events.id)
    end
    
    private
      def events_params
        params.require(:event).permit(:name, :description,:date,:location)
      end
end
