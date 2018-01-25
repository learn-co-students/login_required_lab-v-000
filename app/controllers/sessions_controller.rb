class SessionsController < ApplicationController

  def new
  end

  def index
  end

  def create
    if current_user
      @name = params[:name]
      render '/sessions/show'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/new'
    end
  end

  def show
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end

end