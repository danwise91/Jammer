class UsersController < ApplicationController

  # def index
  #   @users = User.all
  # end

  def show
    @user = User.find(params[:id])
  end
    #finding the instance of an existing user so use find
  #add band variable for user show page
  # @band = Band.new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Rock On"
      redirect_to @user
    else
    render 'new'
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :id, :email, :password, :password_confirmation)
  end

end
