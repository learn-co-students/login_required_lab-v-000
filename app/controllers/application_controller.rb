class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    return nil unless session.include? :name
    @current_user ||= session[:name]
  end
  def require_login
    redirect_to '/' unless !!current_user
  end
end
