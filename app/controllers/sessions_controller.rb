class SessionsController < ApplicationController

  def index
    @current_user = current_user
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    if session[:name]
      session.clear
    end
    redirect_to sessions_path
  end
end