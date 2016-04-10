class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    redirect_to login_path if !logged_in?
    current_user
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
