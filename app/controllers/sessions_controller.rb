class SessionsController < ApplicationController
  def new
  end

  def login
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_sessions_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path(session[:name])
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to sessions_path
  end
end
