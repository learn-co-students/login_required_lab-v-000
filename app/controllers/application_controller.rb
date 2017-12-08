class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @user = current_user
    redirect_to login_url if !logged_in?
  end

  def current_user
    session[:name] ? session[:name] : nil
  end

  private

  def logged_in?
    current_user ? true : false
  end

  def valid_name?
    !params[:name].nil? && !params[:name].blank? ? true : false
  end

end
