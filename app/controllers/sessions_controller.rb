class SessionsController < ApplicationController
    before_action :require_login, only: [:show]
    
    def new
        
    end
    
    def show
        
    end
    
    def create
        
        if params[:name] == nil || params[:name].empty?
            redirect_to '/'
        elsif session[:name]
            redirect_to '/welcome'
        else
            session[:name] = params[:name]
            redirect_to '/welcome'
        end
    end
    
    def destroy
        session.delete :name
        redirect_to '/login'
    end
    


end