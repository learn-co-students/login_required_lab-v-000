class SessionsController < ApplicationController

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/sessions/welcome'
    else
      redirect_to root_path
    end
  end

  def show
    binding.pry
    current_user
  end

  def new

  end

  def login
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/sessions/welcome'
    else
      redirect_to root_path
    end
  end

  def welcome

  end

  def destroy
    if current_user
      session[:name] = nil
    end
    redirect_to root_path
  end



end
