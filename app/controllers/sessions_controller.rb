require 'pry'
class SessionsController < ApplicationController

  def index
    redirect_to new_session_path
  end

  def new
  end

  def create
    # binding.pry
    if params[:name] && params[:name] != ""
        session[:name] = params[:name]
        # binding.pry
        # redirect_to session_path
    else
      redirect_to new_session_path
    # else
    #   session[:name] = params[:name]
    end
  end

  def show
  end

  def destroy
    if session[:name]
      session[:name] = nil
      redirect_to new_session_path
    end
  end

end
