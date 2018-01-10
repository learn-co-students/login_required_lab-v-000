class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    unless !session[:name]
      session.destroy
    end
  end

end
