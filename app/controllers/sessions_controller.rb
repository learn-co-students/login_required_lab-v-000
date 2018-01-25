class SessionsController < ApplicationController

  def create
    redirect_to '/login' if params[:name].blank?
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
  
end