class ApplicationController < ActionController::Base
  helper_method :current_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    # current_user ? render 'welcome' : redirect_to(login_path) # This doesn't work, for some reason.
    if current_user
      render :welcome
    else
      redirect_to login_path
    end
  end

  def current_user
    session[:name]
  end
end
