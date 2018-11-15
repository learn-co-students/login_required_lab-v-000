class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    if valid_name?
      session.clear
      session[:name] = params[:name]
      redirect_to "/secrets/show", alert: "Successfully logged in."
    else
      redirect_to "/login", alert: "Oops! Something went wrong."
    end
  end 

  def destroy
    if session[:name]
      session.destroy 
      redirect_to "/", alert: "Successfully logged out."
    else
      redirect_to "/", alert: "Successfully logged out."
    end
  end

  private

  def valid_name?
    !params[:name].blank? && !params[:name].nil? && params[:name] != ""
  end
end
