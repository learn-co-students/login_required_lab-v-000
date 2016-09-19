class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    render 'application/welcome'
  end

  def current_user
    session[:name]
  end
  # def current_user
  #   # session[:user_id] = user.id
  #   # session([user: 'name'])
  #   session[:username]||= params[:name]
  #   # render 'sessions/user']
  # end

end
