class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.new
  end

  def new
    @user = User.new(params[:user])
  end

  def create
    # sign up
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
      flash[:success] = "Welcome"
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
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
