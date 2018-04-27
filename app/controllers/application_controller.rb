class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, only: [:home]

  helper_method :current_user
  helper_method :logged_in?
  helper_method :require_login

  
  def home
    
  end

  
  def current_user
    session[:name] ||= nil
  end

  def logged_in?
    !!current_user
  end

  def require_login 
    redirect_to login_path unless logged_in?
  end
end
