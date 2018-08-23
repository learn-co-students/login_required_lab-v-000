class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helpers do

    def current_user
      if logged_in?
        User.find_by(session[:id])
      else
        nil
      end
    end

  end

end
