class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def set_current_user(name)
    session[:name] = name
  end

  def require_login
    redirect_to(login_path) unless current_user
  end
end
