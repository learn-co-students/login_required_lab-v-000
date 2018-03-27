class SessionsController < ApplicationController
    
    def new
    end
    
    def create 
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/show'
        end
    end
    
    def destroy
        if session[:name]
            session.clear
        end
        
        redirect_to '/login'
    end
    
end