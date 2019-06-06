class SessionsController < ApplicationController

  def new
  end

  def create
    # binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.clear
      redirect_to '/'
    else
      redirect_to '/'
    end
  end
end
