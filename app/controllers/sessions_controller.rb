class SessionsController < ApplicationController

  def index
    redirect_to login_path if !current_user
  end

  def new
    redirect_to root_path if current_user.present?
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
