class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank? 
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      render '/secrets/show'
    end
  end

  def destroy
    session[:name] = nil 
    redirect_to '/sessions/new'
  end
end
