class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def hello
    redirect_to login_path if !logged_in?
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !!current_user
  end
end
