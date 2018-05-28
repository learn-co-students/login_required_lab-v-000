class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login, only: [:show]

  def current_user
    session[:name]
  end

  def require_login
    # should redirect to login if you're not logged in
    # redirect to session/new unless sessions has a name
    redirect_to '/sessions/new' unless !!session[:name]
  end
end
