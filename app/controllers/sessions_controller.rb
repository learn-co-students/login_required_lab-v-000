class SessionsController < ApplicationController
   def new

   end

   def create
     if !params[:name].nil? && !params[:name].empty?
       session[:name] = params[:name]
       redirect_to secrets_path
     else
       redirect_to new_session_path
     end
   end

   def destroy
     if session.include? :name
       session.clear
     end
     redirect_to new_session_path
   end

end
