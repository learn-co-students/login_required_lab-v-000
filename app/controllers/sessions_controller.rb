class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if current_user && !current_user.empty?
      render :welcome
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end

end
