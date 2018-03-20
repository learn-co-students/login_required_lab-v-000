class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] != "" && params[:name] != nil
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def show
        require_login
        @username = session[:name]
    end

    def delete
        @session = session
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end