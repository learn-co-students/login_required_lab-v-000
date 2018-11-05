class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello

  end

  def current_user
    session[:name]
  end

  def current_user=(name)
    session[:name] = name
  end

  def logged_in?
    !!self.current_user
  end

  def logg_out!
    session.delete(:name)
  end
end
