class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to new_sessions_path
    else
      redirect_to secrets_path
    end
  end

  def destroy
    if session[:name]
      session.clear
    end
  end
end
