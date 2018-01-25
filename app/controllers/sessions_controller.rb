class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'home'
    end
  end

  def destroy
    session.clear
    redirect_to controller: 'application', action: 'home'
  end
end
