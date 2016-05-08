class SessionsController < ApplicationController

  def create
    current_user = params[:name]
    redirect_to '/sessions/welcome'
  end

  def show
    binding.pry
    current_user
  end

  def new

  end

  def login
    current_user = params[:name]
    redirect_to sessions_welcome_path
  end

  def welcome

  end

  def destroy

  end

end
