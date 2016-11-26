class SessionsController < ApplicationController

  def new
  end

  def show
  
  end

  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to "/", alert: "Must enter a name"
    else
      session[:name] = params[:name]
      @user = session[:name]
      render 'sessions/show'
    end
  end

  def destroy
  end
end
