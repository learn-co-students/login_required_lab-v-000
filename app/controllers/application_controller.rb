class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def homepage
    render inline: "HomePage"
  end
  def current_user
    session[:name]
  end

  def redirect_to_if_not_logged_in?(redirect)
    if(session[:name].nil?)
      redirect_to redirect
      return true
    else
      return false
    end
  end
end
