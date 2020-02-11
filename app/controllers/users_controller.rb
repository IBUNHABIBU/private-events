class UsersController < ApplicationController
    def index
    end
    def show 
    end
    def new 
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save 
            flash[:success] = 'User was successful created.'
            redirect_to @user 
        else
            render new
        end
    end
    private 
    def user_params
        params.require(:user).permit(:name,:email)
    end
end
