class SessionsController < ApplicationController
  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
  end
end
