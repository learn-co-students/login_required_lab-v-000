class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    if !current_user
      redirect_to '/login'
    end
  end

  def current_user
    if session[:name].nil? || session[:name].empty?
      return nil
    else
      return session[:name]
    end
  end


end
