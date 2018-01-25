class SessionsController < ApplicationController
  def new
  end

  def create
    if !current_user || current_user == ""
      redirect_to new_session_path 
    end
    session[:name] = params[:name]
  end

  def destroy
    if session[:name]
      reset_session
    end
    redirect_to new_session_path
  end
end