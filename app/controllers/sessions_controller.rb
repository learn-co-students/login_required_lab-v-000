class SessionsController < ApplicationController
  
  def new

  end

  def create
    if params[:name].present? 
      session[:name] = params[:name]
      redirect_to secret_path, alert:"Please enter username to continue"
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear if current_user
    redirect_to root_path
  end

  
end