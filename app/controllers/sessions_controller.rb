class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name] == nil
    else
      reset_session
    end
    redirect_to '/sessions/new'

  end
end
