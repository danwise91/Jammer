class SessionsController < ApplicationController

  def new

    # @user = User.new
  end

  def create
    #integerating both soundcloud signin and also MM signin
    if params[:provider]
      user = User.from_omniauth(env["omniauth.auth"])
      session[:id] = user.id
      redirect_to user
    else
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      log_in @user
      redirect_to @user
  end
    # render 'new'
    # @user = User.new(params[:email], params[:password])
    #  user = User.find_by(params[:email], params[:password])
    # if user && user.authenticate(params[:password])
    #   # session[:user_id]= user.id
    #   redirect_to root_path
    # else
      flash[:danger] = "Bad username or password"
      render :new
    end
  end


  def destroy
    log_out
    redirect_to root_url
    # session[:user_id]=nil
    # redirect_to root_path, notice: "You have been logged out"
  end
end
