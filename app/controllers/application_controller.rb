class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if !session[:name]
      redirect_to '/sessions/new'
    end
  end

  def current_user
    session[:name]
  end

  def require_logged_in
    if !current_user
      redirect_to '/login'
    end
  end
end
