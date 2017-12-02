class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end
 
    def create
        
        if params[:name] != "" && params[:name]
          session[:name] = params[:name]
          redirect_to '/'
        else
          redirect_to controller: 'sessions', action: 'new'
        end
    end

    def destroy
        if session[:name]
            session[:name] = nil
            redirect_to '/'
        end
    end

    


end