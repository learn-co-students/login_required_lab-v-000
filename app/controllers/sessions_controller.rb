class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/index'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/login'
    else
      redirect_to '/login'
    end
  end
end
