class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] != "" && params[:name] != nil
      session[:name] = params[:name]
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def show
    if !!current_user
      @current_user = current_user
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end

end
