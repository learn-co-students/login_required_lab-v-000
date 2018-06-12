class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user
  skip_before_action :current_user, only: [:new, :create, :index]


  def current_user
    # binding.pry
    # session[:name]
     return session[:name] unless !session.include? :name
  end
end