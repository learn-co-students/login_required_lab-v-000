class SessionsController < ApplicationController
   before_action :logged_in?
  
  def new
  end

  def create
    if !params[:name].empty?
      session[:name] = params[:name] 
      redirect_to secrets_show_path
    else
      redirect_to root_path
    end
  end

  def show
    
  end

  def destroy
    session[:name] = nil 
    redirect_to root_path
  end
  
  
end
