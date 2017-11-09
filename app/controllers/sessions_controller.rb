class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !params[:name] || params[:name] = ""
      redirect_to '/login'
    else
      redirect_to '/secrets'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
