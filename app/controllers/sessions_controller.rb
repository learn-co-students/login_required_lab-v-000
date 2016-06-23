class SessionsController < ApplicationController

  def new

  end

  def index

  end

  def create
    if current_user
      @name = current_user
      render :show
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end
  end

  def show

  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
