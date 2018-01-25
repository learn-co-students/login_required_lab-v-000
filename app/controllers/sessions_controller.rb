class SessionsController < ApplicationController

  def new
   
  end

  def create
    session[:name] = params[:name]
    if current_user.present?
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end