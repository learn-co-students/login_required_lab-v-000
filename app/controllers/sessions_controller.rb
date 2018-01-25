class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name].nil?
      redirect_to '/login'
    else
      session.delete :name
      redirect_to '/'
    end
  end
  
end
