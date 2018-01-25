class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to welcome_path
    else
      render "new"
    end
  end

  def welcome
    if logged_in?
      @user = current_user
      render "welcome"
    else
      redirect_to new_session_path
    end
  end

  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end

end