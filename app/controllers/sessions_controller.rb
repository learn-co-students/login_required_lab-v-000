class SessionsController < ApplicationController
  def new
    
  end

  def create
    if params[:name] && params[:name].length > 0
      session[:name] = params[:name]
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session[:name] = nil if session[:name]
  end
  
  private 
  
  def session_params
    params.permit(:name)
  end
end
