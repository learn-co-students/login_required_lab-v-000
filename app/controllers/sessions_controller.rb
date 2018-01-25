class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user
      redirect_to '/secrets/show'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/sessions/new'
  end

end
