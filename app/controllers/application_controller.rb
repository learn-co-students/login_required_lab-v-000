class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_logged_in, only: [:index]
  
  def index
      #require_logged_in
      render :index
  end

  def current_user
    session[:name] # ||= [].first
  end

  private

  def require_logged_in
    redirect_to root_path unless current_user
  end

end
