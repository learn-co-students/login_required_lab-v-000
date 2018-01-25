class SessionsController < ApplicationController

  def new
    render "login"
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      render "homepage"
    end
  end

  def homepage
    @username = session[:name]
  end

  def destroy
    session.clear
    render "login"
  end
end
