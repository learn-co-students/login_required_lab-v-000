class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method [:require_login, :current_user, :logged_in?]  
  
  def require_login
    return redirect_to login_path if session[:name].blank?
  end   
  
  def current_user
    session[:name]
  end
  
  def logged_in?
    current_user.present?
  end
end
