class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
        session[:name] ? session[:name]:nil
  end

  private
  def require_login
      if !session[:name] || session[:name].empty?
        redirect_to root_path
  end

end

end
