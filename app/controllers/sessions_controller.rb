class SessionsController < ApplicationController
    before_action :require_login, only: [:show]
   
    def index
        if current_user
            redirect_to '/welcome'
        else
            redirect_to '/login'
        end
    end
    
    def new
        
    end

    def create
        if !params[:name].nil? && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/welcome'
        else
            redirect_to '/login'
        end
    end

    def show
    end

    def destroy
        session.delete :name if !current_user.nil?
        redirect_to '/login'
    end

    private

    def require_login
        redirect_to '/login' unless session.include? :name
    end
 
end