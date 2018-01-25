class SessionsController < ApplicationController
  def new
    if session[:name] == nil || session[:name] == ""
      render '/sessions/login'
    else
      render '/sessions/home'
    end
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/'
    else
      session[:name] = params[:name]
      render '/sessions/home'
     end
  end

  def destroy
    session.delete :name
    render '/sessions/login'
  end
end
