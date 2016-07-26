class SessionsController < ApplicationController

  def index
    current_user
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_sessions_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end
  end

  def destroy
    if current_user.nil?
      redirect_to new_sessions_path
    else
      session[:name] = nil
      redirect_to new_sessions_path
    end
  end

end
