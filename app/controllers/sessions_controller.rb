class SessionsController < ApplicationController
  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_show_path
    end
  end

  def destroy
    session.clear 
  end
  
  def new 
  end
  
  
  
end
