class SessionsController < ApplicationController

  def hello
    redirect_to login_path unless current_user
  end

  def new
  end

  def create
    unless params[:name].blank? || !params[:name]
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end

end
