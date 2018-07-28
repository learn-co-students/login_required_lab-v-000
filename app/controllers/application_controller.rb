class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_user
    session[:name] ? session[:name] : nil
  end

  def logged_in?
    current_user ? true : false
  end

  private
    def require_login
      redirect_to new_session_path unless logged_in?
    end

end
