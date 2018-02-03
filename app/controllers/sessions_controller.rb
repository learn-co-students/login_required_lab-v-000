class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      render 'sessions/welcome'
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
