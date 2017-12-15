class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if !session.include?(:name)
      nil
    else
      session[:name]
    end
  end

  def index
    if current_user
      render 'index'
    else
      redirect_to login_path
    end
  end
end
