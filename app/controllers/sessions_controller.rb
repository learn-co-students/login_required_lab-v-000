class SessionsController < ApplicationController
        
    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end
    
    def destroy
        session.delete(:name)
        session[:name] = nil
        redirect_to login_path
    end

end
