class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].blank?
      session.delete :name
    end
    redirect_to '/sessions/new'
  end
end
