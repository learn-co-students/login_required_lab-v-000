class SessionsController < ApplicationController

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    if current_user
      session.clear
    end
    redirect_to login_path
  end
end