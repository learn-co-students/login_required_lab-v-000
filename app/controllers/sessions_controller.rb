class SessionsController < ApplicationController

  def index
    current_user
    render 'welcome'
  end

  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to "/"
  end



end
