require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def index
  end

  def create
    #binding.pry
    if params[:name] == nil
      redirect_to new_session_path
    elsif params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      #binding.pry
      redirect_to sessions_path
    end
  end

  def destroy
    #binding.pry
    if session[:name]
      session.delete :name
    end
    redirect_to new_session_path
  end


end
