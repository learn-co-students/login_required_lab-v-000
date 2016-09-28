require 'pry'
class SessionsController < ApplicationController

  def index
    @username = current_user
  end

  def new

  end

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
      redirect_to new_session_path
    end
  end

end
