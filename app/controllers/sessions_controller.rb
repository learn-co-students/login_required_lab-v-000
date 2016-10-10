class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      render :user
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end
end
