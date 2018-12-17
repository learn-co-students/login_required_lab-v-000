class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
	  #returns name of current_user or nil if no one is logged in
	  !session[:name].nil?  && !session[:name].empty? ? session[:name] : nil
  end

  def login
	  	session[:name] = params[:name]
  end

  def logged_in?
	  !session[:name].nil?  && !session[:name].empty? ? true : false
  end
end
