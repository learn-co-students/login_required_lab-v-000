class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :is_logged_in
  skip_before_action :is_logged_in, only: [:new, :create, :index]

  def hello
    
  end

  def current_user
     session[:name]
  end
  

  private

  def is_logged_in
     redirect_to controller: 'sessions', action: 'new'  unless current_user
  end
end