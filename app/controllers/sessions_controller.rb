class SessionsController < ApplicationController

  def new
    render 'sessions/create'
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to secret_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
