class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  private

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/'
    end
  end

end
