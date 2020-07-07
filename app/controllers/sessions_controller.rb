class SessionsController < ApplicationController
  def new
  end

  def create 
    redirect_to "/login" if params[:name].blank?
    session[:name] = params[:name]
  end

  def destroy
    session[:name] = nil
  end
end
