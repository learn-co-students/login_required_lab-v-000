class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home

  end

  def current_user
    if params[:name].present?
      session[:name] = params[:name]
    else
      session[:name]
    end
  end

  def logged_in?
    current_user != nil
  end

  def require_login
    redirect_to "/login" unless logged_in?
  end

end
