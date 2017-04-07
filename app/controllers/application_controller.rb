class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def current_user= (name)
        session[:name] = name
    end

    def current_user
        session[:name]    
    end
    private
    def user_params
        params.permit(:name)
    end

    def require_login
        redirect_to sessions_new_path unless session.include? current_user
    end
end
