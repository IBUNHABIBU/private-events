class EventsController < ApplicationController
  before_action :logged_in_user, except: [:index, :show]
    def new 
        @events = Event.new
    end
    def create 
      @events = current_user.events.build(events_params)
      if @events.save
        flash[:success] = "Event created successfully"
        redirect_to user_event_path
      else
        render :new
      end
    end
    def index 
      @user = User.find(params[:user_id])
      @events = @user.events
    end
    def show
      @events = Event.find(params[:id])
    end
    
    private
      def events_params
        params.require(:event).permit(:name, :description,:date,:location)
      end
end
