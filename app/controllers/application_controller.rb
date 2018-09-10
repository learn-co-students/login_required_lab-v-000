class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= session[:name]
  end

  private

  def require_login
    redirect_to sessions_new_path unless session[:name] == current_user && !session[:name].nil?
  end
end
