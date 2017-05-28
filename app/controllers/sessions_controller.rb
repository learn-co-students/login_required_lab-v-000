class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to secrets_show_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
