class SessionsController < ApplicationController

  def new
  end

  def create
      if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to greeting_path
    end
  end

  def index
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end


end
