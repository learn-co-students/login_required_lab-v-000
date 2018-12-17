class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :login, :logged_in

  def current_user
	  !session[:name].nil?  && !session[:name].empty? ? session[:name] : nil
  end

  def login
	  	session[:name] = params[:name]
  end

  def logged_in?
	  !session[:name].nil?  && !session[:name].empty? ? true : false
  end

  private

  def require_logged_in
    redirect_to '/' unless logged_in?
  end
end
