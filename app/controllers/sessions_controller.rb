class SessionsController < ApplicationController

    def new
        
    end
        
    def create
        redirect_to controller: 'sessions', action: 'new' unless session[:name]
        session[:name] = params[:name]
    end





    def destroy
        session.delete :name
    end
    
end