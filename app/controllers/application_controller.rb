class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    require_login
  end

  def current_user
    session[:name]
  end

  private
  
    def require_login
      redirect_to '/' unless session.include? :name
    end
end
