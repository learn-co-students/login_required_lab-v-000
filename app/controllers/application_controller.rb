class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def hello
      redirect_to login_path
    end

    #or can do:
    #def hello
      #redirect_to controller: 'sessions', action: 'new' unless session[:name]
    #end

    def current_user
      session[:name] ||= nil
    end

    private

    def require_login
      redirect_to '/login' unless session.include? :name
    end

    #or can do:
    #def require_logged_in
      #redirect_to controller: 'sessions', action: 'new' unless current_user *(but then current_user can't have the nil part)
    #end

end
