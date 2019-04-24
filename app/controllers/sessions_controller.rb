class SessionsController < ApplicationController
  def new
  end

  def create
    #byebug
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/users/homepage'
    end
  end

  def destroy
    session.clear
  end

end
