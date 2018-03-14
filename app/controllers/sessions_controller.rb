class SessionsController < ApplicationController
  def new
  end

  def create
    #raise params.inspect
    if params[:name] == "" || params[:name] == nil
      flash[:alert] = "Name cannot be blank"
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
