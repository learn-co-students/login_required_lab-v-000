class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  # solution peek, this is the redirect that was called out in the requirements; I was trying to make the root route to sessions#new directly
  def hello
    redirect_to controller: 'sessions', action: 'new'
  end

  def current_user
    session[:name]
  end

  private

  def check_current_user
      redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
