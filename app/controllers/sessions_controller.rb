class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/secrets/show"
    end

  end

  def new
  end

  def destroy
    if session[:name]
      session.clear
    end
    redirect_to "/login"
  end

end
