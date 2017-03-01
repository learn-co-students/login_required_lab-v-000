require 'pry'

class SessionsController < ApplicationController

  def create
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to controller: 'sessions', action: 'welcome'
    else
      session[:name] = nil
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def welcome
    @current_user = current_user
    render :welcome
  end

  def new
    render :login
  end

  def destroy
    if !current_user
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = nil
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def secret
    if current_user
      render :secret
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
