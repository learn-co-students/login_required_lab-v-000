class SessionsController < ApplicationController

  def new
    redirect_to(root_path) if current_user
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to(sessions_login_path)
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name) if current_user
    redirect_to sessions_login_path
  end

end
