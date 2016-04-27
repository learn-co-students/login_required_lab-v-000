class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user.nil?
      session[:name] = params[:name]
      redirect_to '/sessions/new'
    else
      @name = current_user
      redirect_to '/secrets'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end

end