class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to login_path
    else
      redirect_to login_path
    end
  end


  def destroy
    binding.pry
    session.clear
  end



end
