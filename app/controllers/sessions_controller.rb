class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to secrets_path
    end
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end

end
