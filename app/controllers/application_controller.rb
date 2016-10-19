class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def current_user
    #return current_user from session
    session[:name]
  end

  def see

  end
  protect_from_forgery with: :exception
end
