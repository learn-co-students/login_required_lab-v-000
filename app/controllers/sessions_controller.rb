class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session.delete :name unless session[:name] == nil
    redirect_to controller: 'sessions', action: 'new'
  end

end
