class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'pry'

  def show

    redirect_to controller: "sessions", action: "new" unless session.include? :name

  end

  def current_user
    @user = session[:name]
  end

end
