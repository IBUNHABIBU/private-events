class EventsController < ApplicationController
  before_action :logged_in_user, except: [:index, :show]
    def new 
        @event = Event.new
    end
    def create 
      @event = current_user.events.build(events_params)
      if @event.save
        flash[:success] = "Event created successfully"
        redirect_to events_path
      else
        render :new
      end
    end
    def index 
      @event = Event.all
    end
    def show
      @event = Event.find(params[:id])
    end
    
    private
      def events_params
        params.require(:event).permit(:name, :description,:date,:location)
      end
end
