class UsersController < ApplicationController
   def new
     @user = User.new
   end

  def show
    @user = User.find(params[:id])
  end
  def index 
    @user = User.all
  end
  def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
      flash[:success] = 'Your account is created successfully'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Your account is updated successfully'
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,:password)
  end
end
