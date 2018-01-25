class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



    def current_user
       session[:name]
    end
    helper_method :current_user

    def logged_in?
      !!current_user
    end


    def require_login
       redirect_to "/sessions/new" unless session.include?(:name)
    end

end
