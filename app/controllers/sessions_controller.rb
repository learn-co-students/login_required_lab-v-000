class SessionsController < ApplicationController

  def login
  end

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def index
  end

  def destroy
    session.delete :name if !session[:name].nil?
    redirect_to '/'
  end
end
