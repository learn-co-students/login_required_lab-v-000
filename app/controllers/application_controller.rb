class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def index
    redirect_to controller: 'sessions', action: 'new'
  end

  def hello

  end

  def current_user
    session[:name] ||= nil
  end

  private
  def logged_in
    if !current_user
      redirect_to '/login'
    end
  end
end
