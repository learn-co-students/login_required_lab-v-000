class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def require_login
    redirect_to sessions_new_path unless session.include? :name
  end

  helper_method :current_user
    def current_user
      session[:name]
    end
end
