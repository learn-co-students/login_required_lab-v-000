class SessionsController < ApplicationController

  def create
    if session[:name]
      redirect_to secrets_path
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end

end