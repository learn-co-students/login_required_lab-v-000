class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/login-required-lab
  #
  # new code start
  def hello
   redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  # Write a current_user method.
  def current_user
    session[:name]
  end

  private

  def require_logged_in
   redirect_to controller: 'sessions', action: 'new' unless current_user
  end
  # new code end

end
