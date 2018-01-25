class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    #if session[:name] is true (i.e., has a value), return that name, else return nil
    session[:name] ? session[:name] : nil
  end

end
