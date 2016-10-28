class SessionsController < ApplicationController

  def index
  end

  # redirects to login page if :name is nil
  # redirects to login page if :name is empty
  # sets session[:name] if :name was given
  def create
    if current_user
      redirect_to secrets_path
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end
  end

  def destroy 
    if session[:name] = nil
      redirect_to new_session_path
    end
  end
  
end
