class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    return session[:name] unless session[:name].blank?
  end

  def require_logged_in
    redirect_to login_path unless current_user
  end
end
