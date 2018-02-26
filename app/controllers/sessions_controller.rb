class SessionsController < ApplicationController
  def home
    @name = session[:name]
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to sessions_home_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to sessions_new_path
  end
end
