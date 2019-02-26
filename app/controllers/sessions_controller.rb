class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
        @name = session[:name]
      else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session.delete :name
  end


end
