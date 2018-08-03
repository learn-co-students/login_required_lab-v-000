class SessionsController < ApplicationController
   before_action :logged_in?
  
  def new

  end

  def create
    session[:name] = params[:name] 
    redirect_to sessions_show_path
  end

  def show
    
  end

  def destroy
    session[:name] = nil 
    redirect_to root_path
  end
  
  
end
