class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    session[:username] = params[:username]
    if session[:username] == params[:username]
      redirect_to session
    else 
      redirect_to '/login' 
    end 
  end
end
