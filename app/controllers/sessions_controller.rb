class SessionsController < ApplicationController

  def index
  end

  def create
    if !params[:name] || params[:name]== "" || params[:name].nil?
      redirect_to login_path
    else
     session[:name] = params[:name]
     redirect_to root_path
    end

  end

  def destroy
    session.destroy
    redirect_to login_path
  end


end
