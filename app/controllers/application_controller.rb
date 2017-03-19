class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    require_login
    current_user
  end

  def current_user
    @user_name = session[:name] || nil
  end

  def require_login
    redirect_to '/sessions/new' unless current_user
  end
end
