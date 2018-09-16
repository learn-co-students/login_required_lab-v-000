class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/'
        else
            session[:name] = params[:name]
            redirect_to '/welcome'
        end
    end
    def welcome
        @user = session[:user_id]
    end

    def destroy
        session.destroy
    end

end