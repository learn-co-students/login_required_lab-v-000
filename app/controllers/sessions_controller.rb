class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_path
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end
    
    def destroy 
      session[:name] = nil
      redirect_to new_path
    end

end