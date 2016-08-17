class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    #only call db once instead of each time
    @current_user ||= session[:name]
  end
  # methods built in controllers do not go to ActionView part of code
  helper_method :current_user


end
