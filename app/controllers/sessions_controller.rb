class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to "/sessions/show"
    else
      redirect_to "/sessions/new"
    end
  end

  def show

  end

  def destroy
    if session != {}
      session.delete :name
    end
    redirect_to "/"
  end


end
