class SessionsController < ApplicationController
  skip_before_action :is_logged_in?, only: [:new, :create]
  
  def new
  end
  
  def show
  end
  
  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to new_session_path
    else
      session[:name] = params[:name] 
      redirect_to secret_path
    end
  end
  
  def destroy
    session.clear
    redirect_to new_session_path
  end
end