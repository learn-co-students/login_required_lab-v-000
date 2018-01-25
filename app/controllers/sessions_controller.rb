class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/secrets'
    end
  end

  def destroy
    session.clear
    redirect_to '/login'
  end

end