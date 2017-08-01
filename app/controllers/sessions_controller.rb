class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/'
    end
  end

end
