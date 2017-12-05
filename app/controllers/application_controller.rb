class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    session[:name]
  end

  def new
    if !current_user
      redirect_to login_path
    else
      render 'homepage'
    end
  end
end
