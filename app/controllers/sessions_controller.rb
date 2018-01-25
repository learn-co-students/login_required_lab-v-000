class SessionsController < ApplicationController
  def new
    #code
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    reset_session
    redirect_to '/new'
  end
end
