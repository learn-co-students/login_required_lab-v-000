class SessionsController < ApplicationController 
    before_action :logged_in?

    def index 
        if logged_in?
            redirect_to secret_path
        else 
            render :new
        end 
    end 
    
    def new
    end 

    def create 
      if params[:name].present?
        session[:name]= params[:name]

        redirect_to secret_path
      else 
        session[:name] = nil 

        redirect_to '/login'
      end
    end 
    
    def destroy
        session[:name] = nil 
    end 

    
end 