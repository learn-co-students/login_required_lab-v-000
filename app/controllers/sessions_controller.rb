class SessionsController < ApplicationController

  def hello
  end

  def show
    @user = session[:name]
  end

  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/secret'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to root_path
  end
end
