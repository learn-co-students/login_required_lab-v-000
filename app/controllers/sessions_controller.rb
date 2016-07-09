class SessionsController < ApplicationController

  def new

  end

  def create
    #raise params.inspect

    session[:name] = params[:name]
    redirect_to "/sessions/new"
  end

  def destroy
    session[:name]=nil
    redirect_to "sessions/new"
  end
end
