class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      #binding.pry
      redirect_to secret_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
