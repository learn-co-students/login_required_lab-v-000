class SessionsController < ApplicationController

  def new

  end

  def welcome
    if session.include? :name
      @user = current_user
    else
      redirect_to login_path
    end
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
