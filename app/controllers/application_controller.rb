class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if logged_in?
      @user = User.find_by(name: session[:name])
      @user.name
    else
      nil
    end
  end

  def logged_in?
    !!session[:name]
  end

end
