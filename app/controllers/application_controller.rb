class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    if !logged_in?
      redirect_to '/login'
    else
      @username = current_user
    end
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !!session[:name]
  end

  def valid_params?
    !(params[:name].nil? || params[:name].empty?)
  end

  def logout
    session.destroy
  end

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless logged_in?
  end
end
