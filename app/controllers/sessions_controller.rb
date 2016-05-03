class SessionsController < ApplicationController
  def index
    if logged_in?
      @user = current_user
    else
      redirect_to root_path
    end
  end

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/sessions'
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to '/'
  end
end
