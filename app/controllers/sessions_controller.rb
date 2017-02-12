require 'pry'
class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to 'new'
  end
end
