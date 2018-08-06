class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  def home 
     session[:name] = current_user
  end
  
  def current_user
    session[:name] ||= nil
  end
  
  
end
