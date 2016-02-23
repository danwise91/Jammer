class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      log_in @user
      redirect_to @user
  else
      flash[:danger] = "Bad username or password"
      render :new
    end
  end


  def destroy
    log_out
    redirect_to root_url
  end
end
