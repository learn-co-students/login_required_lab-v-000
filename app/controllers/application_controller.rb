class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    current_user ||= session[:name] if session[:name]
  end

  private
  def require_login
    redirect_to '/login' unless current_user
  end
end
