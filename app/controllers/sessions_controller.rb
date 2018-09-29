class SessionsController < ApplicationController

   def new
    end
    
    def create
        if !current_user || current_user.empty?
            if params[:name]
                session[:name] = params[:name]
            end
            redirect_to '/login'
        end
    end
    
    def destroy
        session.delete :name if session[:name]
        redirect_to '/login'
    end
end