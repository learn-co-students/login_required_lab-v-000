class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    if params[:name] != "" && !params[:name].nil?
      current_user = params[:name]
      session[:name] = current_user
      @name = current_user
      render :show
    else
      redirect_to login_path
    end
  end

  def destroy
    if !session[:name].nil?
      session.clear
    end
    redirect_to login_path
  end

end
