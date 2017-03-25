class SessionsController < ApplicationController

  def index
    if current_user
      @user = current_user
    else
      redirect_to new_session_path
    end
  end

  def create
    if params[:name] !=nil && params[:name] !=''
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:name] = nil if session[:name] 
    redirect_to new_session_path
  end


end
