class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear if session[:name].present?
    redirect_to root_path
  end
end
