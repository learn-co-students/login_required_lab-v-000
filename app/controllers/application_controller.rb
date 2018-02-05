class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    #can be called by viewers
    session[:name]
  end

  def welcome
    redirect_to login_path unless current_user
  end

  private
 # can only be called within ApplicationController
  def logged_in?
   redirect_to login_path unless current_user
  end

end
