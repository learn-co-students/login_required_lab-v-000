class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to new_sessions_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to new_sessions_path
  end
end
