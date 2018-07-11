class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    if current_user
      render :welcome
    else
      redirect_to '/login'
    end
  end

  def current_user
    name = session[:name]
  end
end
