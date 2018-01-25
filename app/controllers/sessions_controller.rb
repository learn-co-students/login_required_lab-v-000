class SessionsController < ApplicationController

  def new
  end
  
  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to sessions_new_url
    else 
     session[:name] = params[:name]
     redirect_to root_path
   end
    
  end
  def show
    @user = current_user
  end 
  
  def destroy
     if session[:name]
      session.delete :name
    end 
     redirect_to sessions_new_url
    
  end 
 
end
