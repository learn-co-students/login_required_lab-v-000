require 'pry'

class SessionsController < ApplicationController
    
    def new
        
    end
    
    def create
       if !params[:name].nil? && !params[:name].empty?
           session[:name] = params[:name]
        else
           redirect_to action: 'new' 
        end
    end
    
    def destroy
        if session.include? :name
            session[:name] = nil
        end
    end
end