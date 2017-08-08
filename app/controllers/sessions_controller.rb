class SessionsController < ApplicationController

  def show
    if params[:name].present?
      session[:name] = params[:name]
    else
      redirect_to '/new'
    end
  end

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to secrets_path
    else redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name].present?
      session[:name] = nil
    end
    redirect_to '/sessions/new'
  end

end
