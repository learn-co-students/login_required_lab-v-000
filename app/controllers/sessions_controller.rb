class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path, alert: "Must Enter Username to Log In."
        else
            session[:name] = params[:name]
            redirect_to secrets_path
        end
    end

    def destroy
        if session.include?(:name)
            session.delete(:name)
        end
        redirect_to login_path
    end

end