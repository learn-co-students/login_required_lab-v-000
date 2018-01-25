class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    require_login
    @user = current_user if current_user
  end

  def current_user
    session[:name]
  end

  private

  def require_login
    if current_user.nil?
      redirect_to login_path
    end
  end

end
