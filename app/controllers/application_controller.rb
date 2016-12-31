class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    require_login_name
  end

  def current_user
    @user ||= session[:name]
  end

  private

  def require_login_name
    redirect_to '/login' unless !current_user.nil? && !current_user.empty?
  end

  def require_login
    redirect_to '/login'  unless session.include? :name
  end

end
