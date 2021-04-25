class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name].nil? || params[:name] == ""
            redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = params[:name]
            redirect_to controller: 'sessions', action: 'home'
        end
    end

    def home
        
    end

    def destroy
        session[:name] = nil if !session[:name].nil?
        redirect_to controller: 'sessions', action: 'new'
    end
end