class SessionsController < ApplicationController

  def new
    redirect_to root_path if current_user
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
    session.delete :name if session[:name]
    redirect_to "/sessions/new"
  end
end
