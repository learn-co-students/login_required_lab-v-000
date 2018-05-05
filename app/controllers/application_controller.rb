class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    if current_user
      render
    else
      redirect_to '/login'
    end
  end
  
  def current_user
    session[:name]
  end
  
end
