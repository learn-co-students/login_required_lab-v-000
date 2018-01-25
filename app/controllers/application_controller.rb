class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    if session[:name] 
      @user = session[:name]  
    else 
      nil 
    end 
  end 
  
  
  
  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end 
  
end
