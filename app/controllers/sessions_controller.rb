class SessionsController < ApplicationController
    def create
      if params[:name].nil? || params[:name].empty?
        redirect_to '/'
      else
        session[:name] = params[:name]
      end
    end
  
    def destroy
      session[:name] = nil
    end
end