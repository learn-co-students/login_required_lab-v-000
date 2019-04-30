require 'pry'
class SessionsController < ApplicationController
  
  def new
  end

  def create 
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
    else 
      session[:name] = params[:name]
      redirect_to session_path(current_user)
    end
  end

  def destroy
    if session[:name]
     session.clear
    else
     nil
    end
  end


end
