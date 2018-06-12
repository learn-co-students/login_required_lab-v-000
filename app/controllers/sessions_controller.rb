class SessionsController < ApplicationController

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear if current_user
    redirect_to root_path
  end


end
