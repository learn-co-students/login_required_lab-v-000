class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to '/'
  end

end
