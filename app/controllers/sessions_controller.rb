class SessionsController < ApplicationController
    
    def current_user
        session[:username] = params[:username]
        
    end
end