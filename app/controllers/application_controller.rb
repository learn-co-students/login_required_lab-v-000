class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    redirect_to '/login' unless session.include? :name
  end

  def current_user
    session[:name] if session[:name].present?
  end
end
