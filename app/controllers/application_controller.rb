class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    require_login
  end

  def current_user
    session[:name] if session[:name]
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
