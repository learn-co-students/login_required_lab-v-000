class SessionsController < ApplicationController
  def new
  end
  
  def show
    if !session[:name].nil?
      
    else
      redirect_to "login"
    end
  end
  
  def create
    # session[:name] = params[:name]
    # redirect_to "login" if session[:name].empty?
    if params[:name].nil? || params[:name].empty?
      redirect_to action:"new"
    else
      session[:name] = params[:name]
      redirect_to "show"
    end
  end
  
  def destroy
    session.clear
  end
end
