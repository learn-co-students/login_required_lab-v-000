class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end


end
