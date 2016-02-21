class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # user = User.find_by(email: params[:session][:email])
    # if user && user.authenticate(params[:session][:password])
    # else
    # render 'new'
    @user = User.new(params[:email], params[:password])
     user = User.find_by(params[:email], params[:password])
    if user && user.authenticate(params[:password])
      # session[:user_id]= user.id
      redirect_to root_path
    else
      flash[:error]="Bad username or password"
      render :new
    end
  end

  def show
    render 'new'
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path, notice: "You have been logged out"
  end
    # if @user &&
end
