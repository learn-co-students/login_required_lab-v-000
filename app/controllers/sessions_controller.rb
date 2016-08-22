class SessionsController < ApplicationController
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/secret'
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end
