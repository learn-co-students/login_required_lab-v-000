class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to '/sessions/new'
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end
end
