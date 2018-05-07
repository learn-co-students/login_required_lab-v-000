class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name] == ""
      redirect_to login_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to session_path
    else
      redirect_to login_path
    end
  end

  def show
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end