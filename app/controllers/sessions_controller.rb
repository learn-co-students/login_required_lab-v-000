class SessionsController < ApplicationController

  def new
    render "application/login"
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to "/secret"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:name] = nil
    redirect_to "/login"
  end

end