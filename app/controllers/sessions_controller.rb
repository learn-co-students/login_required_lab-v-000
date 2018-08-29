class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name].nil? || params[:name] == ""
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to secret_path(1)
        end
    end

    def destroy
        if session[:name].nil?
            redirect_to root_path
        else
            session.delete :name
            redirect_to root_path
        end
    end

end
