class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :redirect_if_not_logged_in

  def current_user
    session[:name]
  end

  def redirect_if_not_logged_in
    redirect_to login_path unless current_user
  end
end
