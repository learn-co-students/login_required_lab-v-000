class SessionsController < ApplicationController
  
  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
    end
  end
  
  def new
    #code
  end
  
  def destroy
    if !session[:name].nil?
      session[:name] = nil
    end
  end
  
end