class SessionsController < ApplicationController

    def new 
    end 
    
    def show 
    end 

    def create
        if !params[:name] || params[:name].empty?
            redirect_to new_sessions_path 
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end 

    def destroy
        session.delete :name
        redirect_to new_sessions_path
    end 

end
