class SessionsController < ApplicationController

  def new
    session[:name] = params[:name]
    redirect_to welcome_path
  end

  def welcome

  end

  def login
    # current user isn't doing as it should
    if current_user = params[:name]
      redirect_to welcome_path
    else
      redirect_to root_path
    end
  end

  def create
    current_user = params[:session]
  end

  def show
  end

end
