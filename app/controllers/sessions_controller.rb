class SessionsController < ApplicationController
  # before_action :require_login

  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]
      redirect_to new_session_path
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
      redirect_to new_session_path
    else
      redirect_to new_session_path    
    end
  end
end
