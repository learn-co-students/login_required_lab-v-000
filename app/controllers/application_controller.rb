class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :login_required

  def current_user
    session[:name]
  end

  private

  def login_required
    redirect_to '/' unless session.include? :name
  end
end
