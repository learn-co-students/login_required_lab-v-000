class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if current_user.nil?
      redirect_to root_path
    else
      redirect_to sessions_home_path
    end
  end

  def home
  end

  def destroy
    unless current_user.nil?
      session.clear
    end
    redirect_to root_path
  end

end
