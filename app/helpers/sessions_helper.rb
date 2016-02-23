module SessionsHelper

  #logs in the given user.
  def log_in(user)
    session[:id] = user.id
  end

  #current logged-in user is displayed
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def logged_in?
    !current_user.nil?
  end

  def logged_out
    session.delete(:id)
    @current_user = nil
  end

end
