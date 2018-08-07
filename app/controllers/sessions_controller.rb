class SessionsController < ApplicationController 

  def new 
    
  end
  
  def create 
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      name = params[:name]
      session[:name] = name
      render :welcome
    end
  end
  
  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to '/login'
  end


end
