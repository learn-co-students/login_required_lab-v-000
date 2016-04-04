class SessionsController < ApplicationController
 
 
   def index  
   end
 
   def new
   end
 
   def create
     if params[:name].blank?
       redirect_to '/new'
     else
       session[:name] = params[:name]
       redirect_to secrets_path
     end
   end
 
   def destroy
     if session[:name]
       session.destroy
     end
   end
 
 end