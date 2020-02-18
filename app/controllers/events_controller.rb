class EventsController < ApplicationController
    def new 
        @event = Event.new
    end
    def create 
        @event = Event.new(events_params)
        @event.user = current_user
      if @event.save
        flash[:success] = "Event created successfully"
        redirect_to home_path(current_user)
      else
        render('new')
      end
    end
    def index
    end
    
    private
      def events_params
        params.require(:event).permit(:title, :description,:date,:location)
      end
end
