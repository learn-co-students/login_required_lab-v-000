class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def welcome
    redirect_to '/login' unless session.include? session[:name]
    @user=current_user
  end

end
