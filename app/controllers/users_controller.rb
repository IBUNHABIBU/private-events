class UsersController < ApplicationController
   
    def new 
        @user = User.new
    end
    def show
        @user = User.find(params[:id])
    end
    def index
    end
    def create
        @user = User.new(user_params)
        if @user.save 
            flash[:success] = 'User was successful created.'
            redirect_to events_path
        else
            render new
        end
    end
    private 
    def user_params
        params.require(:user).permit(:name,:email)
    end
end
