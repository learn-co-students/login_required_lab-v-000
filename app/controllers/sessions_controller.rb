class SessionsController < ApplicationController
  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to root_path
    end
  end

  def new

  end

  def show

  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to root_path
  end
end
