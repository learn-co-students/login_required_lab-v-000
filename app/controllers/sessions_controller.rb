class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if params[:name] && params[:name] != "" 
      session[:name] = params[:name]
      redirect_to '/sessions/show'
    else
      redirect_to login_path
    end
  end
  
  def destroy
    session.delete :name
    redirect_to 'sessions/new'
  end
  
  def show
    @user = session[:name]
    
  end
  
  
  
end
