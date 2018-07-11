class SessionsController < ApplicationController

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/secrets/index'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name]
      session.clear
    end
    redirect_to '/sessions/new'
  end
end
