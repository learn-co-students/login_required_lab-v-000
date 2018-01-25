class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.clear
  end

end
