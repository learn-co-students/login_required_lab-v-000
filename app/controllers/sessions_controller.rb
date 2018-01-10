class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to controller: 'sessions', action: 'new' if !params[:name] || params[:name] == ""
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to controller: 'sessions', action: 'new'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end 
end
