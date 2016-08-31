class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    if params[:name].nil? or params[:name].empty?
      redirect_to login_path
    else
      current_user
      redirect_to show_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end
end
