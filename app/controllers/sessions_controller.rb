class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to root_path if session[:name].blank?
  end

  def destroy
    session.destroy if !!session[:name]
    redirect_to root_path
  end

end
