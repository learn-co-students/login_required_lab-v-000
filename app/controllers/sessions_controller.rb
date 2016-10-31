class SessionsController < ApplicationController

  def login

  end

  def new
    redirect_to '/sessions/login' unless session.include?(:name)
    redirect_to '/secrets/thesecret'
  end

  def create
    if params[:username].nil? || params[:username].empty?
      redirect_to '/sessions/new'
    end
    session[:name] = params[:name]
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end




end
