class UsersController < ApplicationController

  # def index
  #   @users = User.all
  # end

  def show
    @user = User.find(params[:id])
    #finding the instance of an existing user so use find
  end
  #add band variable for user show page
  # @band = Band.new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @users
      #handles a successful save

      # session[:user_id] = @user.id
      # redirect_to root_path
      # flash[:success] = "Welcome"
    else
    render 'new'
  end
end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :id, :email, :password_digest)
  end

  # def band_params
  #   params.require(:band).permit(:name)
  # end

end
