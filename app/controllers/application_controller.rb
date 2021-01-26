class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :authenticate_user

  def home
    authenticate_user
  end

  def current_user
    session[:name]
  end

  def authenticate_user
    redirect_to(login_path) if session[:name] == nil || session[:name] == ''
  end
end
